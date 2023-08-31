package com.wansensoft.service.depotHead;

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
@DepotHeadResource
public class DepotHeadComponent implements ICommonQuery {

    private final DepotHeadServiceImpl depotHeadServiceImpl;

    public DepotHeadComponent(DepotHeadServiceImpl depotHeadServiceImpl) {
        this.depotHeadServiceImpl = depotHeadServiceImpl;
    }

    @Override
    public Object selectOne(Long id) throws Exception {
        return depotHeadServiceImpl.getDepotHead(id);
    }

    @Override
    public List<?> select(Map<String, String> map)throws Exception {
        return getDepotHeadList(map);
    }

    private List<?> getDepotHeadList(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String type = StringUtil.getInfo(search, "type");
        String subType = StringUtil.getInfo(search, "subType");
        String roleType = StringUtil.getInfo(search, "roleType");
        String hasDebt = StringUtil.getInfo(search, "hasDebt");
        String status = StringUtil.getInfo(search, "status");
        String purchaseStatus = StringUtil.getInfo(search, "purchaseStatus");
        String number = StringUtil.getInfo(search, "number");
        String linkNumber = StringUtil.getInfo(search, "linkNumber");
        String beginTime = StringUtil.getInfo(search, "beginTime");
        String endTime = StringUtil.getInfo(search, "endTime");
        String materialParam = StringUtil.getInfo(search, "materialParam");
        Long organId = StringUtil.parseStrLong(StringUtil.getInfo(search, "organId"));
        Long creator = StringUtil.parseStrLong(StringUtil.getInfo(search, "creator"));
        Long depotId = StringUtil.parseStrLong(StringUtil.getInfo(search, "depotId"));
        Long accountId = StringUtil.parseStrLong(StringUtil.getInfo(search, "accountId"));
        String remark = StringUtil.getInfo(search, "remark");
        return depotHeadServiceImpl.select(type, subType, roleType, hasDebt, status, purchaseStatus, number, linkNumber,
                beginTime, endTime, materialParam, organId, creator, depotId, accountId, remark, QueryUtils.offset(map), QueryUtils.rows(map));
    }

    @Override
    public Long counts(Map<String, String> map)throws Exception {
        String search = map.get(Constants.SEARCH);
        String type = StringUtil.getInfo(search, "type");
        String subType = StringUtil.getInfo(search, "subType");
        String roleType = StringUtil.getInfo(search, "roleType");
        String hasDebt = StringUtil.getInfo(search, "hasDebt");
        String status = StringUtil.getInfo(search, "status");
        String purchaseStatus = StringUtil.getInfo(search, "purchaseStatus");
        String number = StringUtil.getInfo(search, "number");
        String linkNumber = StringUtil.getInfo(search, "linkNumber");
        String beginTime = StringUtil.getInfo(search, "beginTime");
        String endTime = StringUtil.getInfo(search, "endTime");
        String materialParam = StringUtil.getInfo(search, "materialParam");
        Long organId = StringUtil.parseStrLong(StringUtil.getInfo(search, "organId"));
        Long creator = StringUtil.parseStrLong(StringUtil.getInfo(search, "creator"));
        Long depotId = StringUtil.parseStrLong(StringUtil.getInfo(search, "depotId"));
        Long accountId = StringUtil.parseStrLong(StringUtil.getInfo(search, "accountId"));
        String remark = StringUtil.getInfo(search, "remark");
        return depotHeadServiceImpl.countDepotHead(type, subType, roleType, hasDebt, status, purchaseStatus, number, linkNumber,
                beginTime, endTime, materialParam, organId, creator, depotId, accountId, remark);
    }

    @Override
    public int insert(JSONObject obj, HttpServletRequest request) throws Exception{
        return depotHeadServiceImpl.insertDepotHead(obj, request);
    }

    @Override
    public int update(JSONObject obj, HttpServletRequest request)throws Exception {
        return depotHeadServiceImpl.updateDepotHead(obj, request);
    }

    @Override
    public int delete(Long id, HttpServletRequest request)throws Exception {
        return depotHeadServiceImpl.deleteDepotHead(id, request);
    }

    @Override
    public int deleteBatch(String ids, HttpServletRequest request)throws Exception {
        return depotHeadServiceImpl.batchDeleteDepotHead(ids, request);
    }

    @Override
    public int checkIsNameExist(Long id, String name)throws Exception {
        return 0;
    }

}
