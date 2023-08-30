package com.wansensoft.erp.service.inOutItem;

import com.alibaba.fastjson.JSONObject;
import com.wansensoft.erp.service.ICommonQuery;
import com.wansensoft.erp.utils.Constants;
import com.wansensoft.erp.utils.QueryUtils;
import com.wansensoft.erp.utils.StringUtil;
import org.springframework.stereotype.Service;

import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Service(value = "inOutItem_component")
@InOutItemResource
public class InOutItemComponent implements ICommonQuery {

    @Resource
    private InOutItemService inOutItemService;

    @Override
    public Object selectOne(Long id) throws Exception {
        return inOutItemService.getInOutItem(id);
    }

    @Override
    public List<?> select(Map<String, String> map)throws Exception {
        return getFunctionsList(map);
    }

    private List<?> getFunctionsList(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String name = StringUtil.getInfo(search, "name");
        String type = StringUtil.getInfo(search, "type");
        String remark = StringUtil.getInfo(search, "remark");
        String order = QueryUtils.order(map);
        return inOutItemService.select(name, type, remark, QueryUtils.offset(map), QueryUtils.rows(map));
    }

    @Override
    public Long counts(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String name = StringUtil.getInfo(search, "name");
        String type = StringUtil.getInfo(search, "type");
        String remark = StringUtil.getInfo(search, "remark");
        return inOutItemService.countInOutItem(name, type, remark);
    }

    @Override
    public int insert(JSONObject obj, HttpServletRequest request)throws Exception {
        return inOutItemService.insertInOutItem(obj, request);
    }

    @Override
    public int update(JSONObject obj, HttpServletRequest request)throws Exception {
        return inOutItemService.updateInOutItem(obj, request);
    }

    @Override
    public int delete(Long id, HttpServletRequest request)throws Exception {
        return inOutItemService.deleteInOutItem(id, request);
    }

    @Override
    public int deleteBatch(String ids, HttpServletRequest request)throws Exception {
        return inOutItemService.batchDeleteInOutItem(ids, request);
    }

    @Override
    public int checkIsNameExist(Long id, String name)throws Exception {
        return inOutItemService.checkIsNameExist(id, name);
    }

}