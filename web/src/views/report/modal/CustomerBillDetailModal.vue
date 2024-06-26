<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle">
    <BasicTable @register="registerTable">
      <template #toolbar>
        <a-button type="primary" @click="exportTable" v-text="t('reports.customerBill.export')"/>
        <a-button @click="primaryPrint" v-text="t('reports.customerBill.regularPrint')"/>
      </template>
      <template #bodyCell="{ column, record }">
        <template v-if="column.key === 'receiptNumber'">
          <a @click="openReceipt(record.receiptNumber)"> {{ record.receiptNumber }} </a>
        </template>
      </template>
    </BasicTable>
    <ViewSaleShipmentsModal @register="handleSaleShipmentsModal" />
    <ViewSaleRefundModal @register="handleSaleRefundModal" />
  </BasicModal>
</template>
<div>
</div>

<script lang="ts">
import {defineComponent, ref} from "vue";
import {BasicTable, TableAction, useTable} from "@/components/Table";
import {
  customerBillDetailColumns,
  searchCustomerBillDetailSchema,
} from "@/views/report/report.data";
import {Tag} from "ant-design-vue";
import {getCustomerBillDetail, exportCustomerBillDetail} from "@/api/report/report";
import XEUtils from "xe-utils";
import {BasicModal, useModal, useModalInner} from "@/components/Modal";
import ViewSaleShipmentsModal from "@/views/sales/shipments/components/ViewSaleShipmentsModal.vue";
import ViewSaleRefundModal from "@/views/sales/refund/components/ViewSaleRefundModal.vue";
import {getTimestamp} from "@/utils/dateUtil";
import {useMessage} from "@/hooks/web/useMessage";
import printJS from "print-js";
import {useI18n} from "vue-i18n";
import {useLocaleStore} from "@/store/modules/locale";

export default defineComponent({
  name: 'CustomerBillDetailModal',
  components: {
    BasicModal,
    ViewSaleShipmentsModal,
    ViewSaleRefundModal, Tag, TableAction, BasicTable},
  setup() {
    const { t } = useI18n();
    const { createMessage } = useMessage();
    const getTitle = ref(t('reports.other.customerArrearsDetail'));
    const customerId = ref('');
    const printTableData = ref<any[]>([]);
    const amountSymbol = ref<string>('')
    const localeStore = useLocaleStore().getLocale;
    if(localeStore === 'zh_CN') {
      amountSymbol.value = '￥'
    } else if (localeStore === 'en') {
      amountSymbol.value = '$'
    }
    const [handleSaleShipmentsModal, {openModal: openSaleShipmentsModal}] = useModal();
    const [handleSaleRefundModal, {openModal: openSaleRefundModal}] = useModal();
    const [registerTable, { reload, getForm, getDataSource }] = useTable({
      api: getCustomerBillDetail,
      beforeFetch: (data) => {
        data.customerId = customerId.value;
      },
      columns: customerBillDetailColumns,
      formConfig: {
        labelWidth: 110,
        schemas: searchCustomerBillDetailSchema,
        autoSubmitOnEnter: true,
      },
      bordered: true,
      useSearchForm: true,
      showTableSetting: true,
      striped: true,
      canResize: false,
      showIndexColumn: true,
      showSummary: true,
      summaryFunc: handleSummary,
    });

    const [registerModal, {setModalProps,}] = useModalInner(async (data) => {
      setModalProps({confirmLoading: false, destroyOnClose: true, width: 1100});
      customerId.value = data.customerId
    });

    function handleSummary(tableData: Recordable[]) {
      const thisReceiptArrears = tableData.reduce((prev, next) => prev + next.thisReceiptArrears, 0);
      const receivableArrears = tableData.reduce((prev, next) => prev + next.receivableArrears, 0);
      const receivedArrears = tableData.reduce((prev, next) => prev + next.receivedArrears, 0);
      return [
        {
          _index: t('reports.customerBill.table.total'),
          thisReceiptArrears: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(thisReceiptArrears), { digits: 2 })}`,
          receivableArrears: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(receivableArrears), { digits: 2 })}`,
          receivedArrears: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(receivedArrears), { digits: 2 })}`,
        },
      ];
    }
    async function handleSuccess() {
      reload();
    }

    async function handleCancel() {
      reload();
    }

    function openReceipt(openReceiptNumber: string) {
      if (openReceiptNumber.startsWith('XSCK')) {
        openSaleShipmentsModal(true, {
          receiptNumber: openReceiptNumber,
        });
      } else if (openReceiptNumber.startsWith('XSTH')) {
        openSaleRefundModal(true, {
          receiptNumber: openReceiptNumber,
        });
      }
    }

    function exportTable() {
      if (getDataSource() === undefined || getDataSource().length === 0) {
        createMessage.warn(t('reports.customerBill.notice'));
        return;
      }
      const data: any = getForm().getFieldsValue();
      data.customerId = customerId.value;
      exportCustomerBillDetail(data).then(res => {
        const file: any = res;
        if (file.size > 0) {
          const blob = new Blob([file]);
          const link = document.createElement("a");
          link.href = URL.createObjectURL(blob);
          const timestamp = getTimestamp(new Date());
          link.download = t('reports.other.customerArrearsData') + timestamp + ".xlsx";
          link.target = "_blank";
          link.click();
        }
      });
    }

    function primaryPrint() {
      printTableData.value = getDataSource();
      printTableData.value.push({
        receiptNumber: t('reports.customerBill.table.total'),
        customerName: '',
        productInfo: '',
        receiptDate: '',
        operator: '',
        thisReceiptArrears:  amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(getDataSource().reduce((prev, next) => prev + next.thisReceiptArrears, 0)), { digits: 2 })}`,
        receivableArrears: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(getDataSource().reduce((prev, next) => prev + next.receivableArrears, 0)), { digits: 2 })}`,
        receivedArrears: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(getDataSource().reduce((prev, next) => prev + next.receivedArrears, 0)), { digits: 2 })}`,
      });
      printJS({
        documentTitle: "EAIRP " + t('reports.other.customerArrearsDetail'),
        properties: customerBillDetailColumns.map(item => {
          return { field: item.dataIndex, displayName: item.title }
        }),
        printable: printTableData.value,
        gridHeaderStyle: 'border: 1px solid #ddd; font-size: 12px; text-align: center; padding: 8px;',
        gridStyle: 'border: 1px solid #ddd; font-size: 12px; text-align: center; padding: 8px;',
        type: 'json',
      });
      printTableData.value.pop();
    }

    return {
      t,
      getTitle,
      registerModal,
      openReceipt,
      registerTable,
      handleSuccess,
      handleCancel,
      handleSaleRefundModal,
      handleSaleShipmentsModal,
      exportTable,
      primaryPrint,
    }
  }
})
</script>