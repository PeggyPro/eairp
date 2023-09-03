package com.wansensoft.service.depot;

import com.alibaba.fastjson.JSONObject;
import com.wansensoft.service.ICommonQuery;
import com.wansensoft.utils.Constants;
import com.wansensoft.utils.QueryUtils;
import com.wansensoft.utils.StringUtil;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Service
@DepotResource
public class DepotComponent implements ICommonQuery {

    private final DepotService depotService;

    public DepotComponent(DepotService depotService) {
        this.depotService = depotService;
    }

    @Override
    public Object selectOne(Long id) throws Exception {
        return depotService.getDepot(id);
    }

    @Override
    public List<?> select(Map<String, String> map)throws Exception {
        return getDepotList(map);
    }

    private List<?> getDepotList(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String name = StringUtil.getInfo(search, "name");
        Integer type = StringUtil.parseInteger(StringUtil.getInfo(search, "type"));
        String remark = StringUtil.getInfo(search, "remark");
        String order = QueryUtils.order(map);
        return depotService.select(name, type, remark, QueryUtils.offset(map), QueryUtils.rows(map));
    }

    @Override
    public Long counts(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String name = StringUtil.getInfo(search, "name");
        Integer type = StringUtil.parseInteger(StringUtil.getInfo(search, "type"));
        String remark = StringUtil.getInfo(search, "remark");
        return depotService.countDepot(name, type, remark);
    }

    @Override
    public int insert(JSONObject obj, HttpServletRequest request) throws Exception{
        return depotService.insertDepot(obj, request);
    }

    @Override
    public int update(JSONObject obj, HttpServletRequest request)throws Exception {
        return depotService.updateDepot(obj, request);
    }

    @Override
    public int delete(Long id, HttpServletRequest request)throws Exception {
        return depotService.deleteDepot(id, request);
    }

    @Override
    public int deleteBatch(String ids, HttpServletRequest request)throws Exception {
        return depotService.batchDeleteDepot(ids, request);
    }

    @Override
    public int checkIsNameExist(Long id, String name)throws Exception {
        return depotService.checkIsNameExist(id, name);
    }

}