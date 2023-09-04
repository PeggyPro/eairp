package com.wansensoft.api.unit;

import com.alibaba.fastjson.JSONObject;
import com.wansensoft.entities.unit.Unit;
import com.wansensoft.service.unit.UnitService;
import com.wansensoft.utils.BaseResponseInfo;
import com.wansensoft.utils.ErpInfo;
import com.wansensoft.utils.Response;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "/unit")
@Api(tags = {"单位管理"})
public class UnitController {

    private final UnitService unitService;

    public UnitController(UnitService unitService) {
        this.unitService = unitService;
    }

    /**
     * 单位列表
     * @param request
     * @return
     * @throws Exception
     */
    @GetMapping(value = "/getAllList")
    @ApiOperation(value = "单位列表")
    public BaseResponseInfo getAllList(HttpServletRequest request) {
        BaseResponseInfo res = new BaseResponseInfo();
        try {
            List<Unit> unitList = unitService.getUnit();
            res.code = 200;
            res.data = unitList;
        } catch(Exception e){
            res.code = 500;
            res.data = "获取数据失败";
        }
        return res;
    }

    /**
     * 批量设置状态-启用或者禁用
     * @param jsonObject
     * @param request
     * @return
     */
    @PostMapping(value = "/batchSetStatus")
    @ApiOperation(value = "批量设置状态")
    public Response batchSetStatus(@RequestBody JSONObject jsonObject,
                                 HttpServletRequest request) {
        Boolean status = jsonObject.getBoolean("status");
        String ids = jsonObject.getString("ids");
        int res = unitService.batchSetStatus(status, ids);
        if(res > 0) {
            return Response.responseMsg(ErpInfo.OK.name, ErpInfo.OK.code);
        } else {
            return Response.responseMsg(ErpInfo.ERROR.name, ErpInfo.ERROR.code);
        }
    }
}
