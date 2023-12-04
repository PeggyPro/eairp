/*
 * Copyright 2023-2033 WanSen AI Team, Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance
 * with the License. A copy of the License is located at
 *
 * http://opensource.wansenai.com/apache2.0/
 *
 * or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
 * OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions
 * and limitations under the License.
 */
package com.wansenai.vo.report;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.wansenai.bo.BigDecimalSerializerBO;
import com.wansenai.utils.excel.ExcelExport;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@Builder
public class ShipmentsSummaryVO {

    @ExcelExport(value = "商品条码")
    private String productBarcode;

    @ExcelExport(value = "仓库")
    private String warehouseName;

    @ExcelExport(value = "商品名称")
    private String productName;

    @ExcelExport(value = "商品分类")
    private String productCategoryName;

    @ExcelExport(value = "规格")
    private String productStandard;

    @ExcelExport(value = "型号")
    private String productModel;

    @ExcelExport(value = "单位")
    private String productUnit;

    @ExcelExport(value = "出库数量")
    private Integer shipmentsNumber;

    @JsonSerialize(using = BigDecimalSerializerBO.class)
    @ExcelExport(value = "出库金额")
    private BigDecimal shipmentsAmount;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @ExcelExport(value = "出库时间")
    private LocalDateTime createTime;
}
