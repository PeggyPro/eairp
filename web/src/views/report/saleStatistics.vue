<template>
  <div>
    <BasicTable @register="registerTable">
      <template #toolbar>
        <a-button @click="exportTable" v-text="t('reports.sales.export')"/>
        <a-button @click="primaryPrint" type="primary" v-text="t('reports.sales.regularPrint')"/>
      </template>
    </BasicTable>
  </div>
</template>
<div>
</div>

<script lang="ts">
import {defineComponent, ref} from "vue";
import {BasicTable, TableAction, useTable} from "@/components/Table";
import {searchSalesSchema, salesStatisticsColumns} from "@/views/report/report.data";
import {Tag} from "ant-design-vue";
import {getSalesStatistics, exportSalesStatistics} from "@/api/report/report";
import XEUtils from "xe-utils";
import printJS from "print-js";
import {useMessage} from "@/hooks/web/useMessage";
import {getTimestamp} from "@/utils/dateUtil";
import {useI18n} from "vue-i18n";
import {useLocaleStore} from "@/store/modules/locale";

export default defineComponent({
  name: 'SalesStatistics',
  components: {Tag, TableAction, BasicTable},
  setup() {
    const { t } = useI18n();
    const printTableData = ref<any[]>([]);
    const { createMessage } = useMessage();
    const printSalesNumber = ref(0);
    const printSalesAmount = ref(0);
    const printSalesRefundNumber = ref(0);
    const printSalesRefundAmount = ref(0);
    const printSalesLastAmount = ref(0);
    const amountSymbol = ref<string>('')
    const localeStore = useLocaleStore().getLocale;
    if(localeStore === 'zh_CN') {
      amountSymbol.value = '￥'
    } else if (localeStore === 'en') {
      amountSymbol.value = '$'
    }
    const [registerTable, { reload, getForm, getDataSource }] = useTable({
      title: t('reports.sales.title'),
      api: getSalesStatistics,
      columns: salesStatisticsColumns,
      formConfig: {
        labelWidth: 110,
        schemas: searchSalesSchema,
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

    function handleSummary(tableData: Recordable[]) {
      const salesNumber = tableData.reduce((prev, next) => prev + next.salesNumber, 0);
      const salesAmount = tableData.reduce((prev, next) => prev + next.salesAmount, 0);
      const salesRefundNumber = tableData.reduce((prev, next) => prev + next.salesRefundNumber, 0);
      const salesRefundAmount = tableData.reduce((prev, next) => prev + next.salesRefundAmount, 0);
      const salesLastAmount = tableData.reduce((prev, next) => prev + next.salesLastAmount, 0);
      printSalesNumber.value = salesNumber;
      printSalesAmount.value = salesAmount;
      printSalesRefundNumber.value = salesRefundNumber;
      printSalesRefundAmount.value = salesRefundAmount;
      printSalesLastAmount.value = salesLastAmount;
      printTableData.value = tableData;
      return [
        {
          _index: t('reports.sales.table.total'),
          salesNumber: salesNumber,
          salesAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(salesAmount), { digits: 2 })}`,
          salesRefundNumber: salesRefundNumber,
          salesRefundAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(salesRefundAmount), { digits: 2 })}`,
          salesLastAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(salesLastAmount), { digits: 2 })}`
        },
      ];
    }
    async function handleSuccess() {
      reload();
    }

    async function handleCancel() {
      reload();
    }

    function exportTable() {
      if (getDataSource() === undefined || getDataSource().length === 0) {
        createMessage.warn(t('reports.sales.notice'));
        return;
      }
      const data: any = getForm().getFieldsValue();
      exportSalesStatistics(data).then(res => {
        const file: any = res;
        if (file.size > 0) {
          const blob = new Blob([file]);
          const link = document.createElement("a");
          link.href = URL.createObjectURL(blob);
          const timestamp = getTimestamp(new Date());
          link.download = t('reports.sales.data') + timestamp + ".xlsx";
          link.target = "_blank";
          link.click();
        }
      });
    }

    function primaryPrint() {
      printTableData.value.push({
        salesNumber: printSalesNumber.value,
        salesAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(printSalesAmount.value), { digits: 2 })}`,
        salesRefundNumber: printSalesRefundNumber.value,
        salesRefundAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(printSalesRefundAmount.value), { digits: 2 })}`,
        salesLastAmount: amountSymbol.value + `${XEUtils.commafy(XEUtils.toNumber(printSalesLastAmount.value), { digits: 2 })}`,
        productBarcode: t('reports.sales.table.total'),
        warehouseName: '',
        productName: '',
        productStandard: '',
        productModel: '',
        productExtendInfo: '',
        productUnit: '',
      });
      printJS({
        documentTitle: "EAIRP " + t('reports.sales.table.detail'),
        properties: salesStatisticsColumns.map(item => {
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
      registerTable,
      handleSuccess,
      handleCancel,
      exportTable,
      primaryPrint
    }
  }
})
</script>