package com.wansensoft.service.role;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wansensoft.entities.role.Role;
import com.wansensoft.entities.role.RoleEx;
import com.wansensoft.entities.role.RoleExample;
import com.wansensoft.entities.user.User;
import com.wansensoft.service.log.LogService;
import com.wansensoft.service.user.UserService;
import com.wansensoft.utils.constants.BusinessConstants;
import com.wansensoft.plugins.exception.JshException;
import com.wansensoft.mappers.role.RoleMapper;
import com.wansensoft.mappers.role.RoleMapperEx;
import com.wansensoft.utils.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService{
    private Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    private final RoleMapper roleMapper;
    private final RoleMapperEx roleMapperEx;
    private final LogService logService;
    private final UserService userService;

    public RoleServiceImpl(RoleMapper roleMapper, RoleMapperEx roleMapperEx, LogService logService, UserService userService) {
        this.roleMapper = roleMapper;
        this.roleMapperEx = roleMapperEx;
        this.logService = logService;
        this.userService = userService;
    }

    public Role getRole(long id) {
        Role result=null;
        try{
            result=roleMapper.selectByPrimaryKey(id);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return result;
    }

    public List<Role> getRoleListByIds(String ids) {
        List<Long> idList = StringUtil.strToLongList(ids);
        List<Role> list = new ArrayList<>();
        try{
            RoleExample example = new RoleExample();
            example.createCriteria().andIdIn(idList);
            list = roleMapper.selectByExample(example);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return list;
    }

    public List<Role> allList() {
        RoleExample example = new RoleExample();
        example.createCriteria().andEnabledEqualTo(true).andDeleteFlagNotEqualTo(BusinessConstants.DELETE_FLAG_DELETED);
        example.setOrderByClause("sort asc, id desc");
        List<Role> list=null;
        try{
            list=roleMapper.selectByExample(example);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return list;
    }

    public List<RoleEx> select(String name, String description, int offset, int rows) {
        List<RoleEx> list=null;
        try{
            list=roleMapperEx.selectByConditionRole(name, description, offset, rows);
            for(RoleEx roleEx: list) {
                String priceLimit = roleEx.getPriceLimit();
                if(StringUtil.isNotEmpty(priceLimit)) {
                    String priceLimitStr = priceLimit
                        .replace("1", "屏蔽首页采购价")
                        .replace("2", "屏蔽首页零售价")
                        .replace("3", "屏蔽首页销售价")
                        .replace("4", "屏蔽单据采购价")
                        .replace("5", "屏蔽单据零售价")
                        .replace("6", "屏蔽单据销售价");
                    roleEx.setPriceLimitStr(priceLimitStr);
                }
            }
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return list;
    }

    public Long countRole(String name, String description) {
        Long result=null;
        try{
            result=roleMapperEx.countsByRole(name, description);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return result;
    }

    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int insertRole(JSONObject obj, HttpServletRequest request) {
        Role role = JSONObject.parseObject(obj.toJSONString(), Role.class);
        int result=0;
        try{
            role.setEnabled(true);
            result=roleMapper.insertSelective(role);
            logService.insertLog("角色",
                    BusinessConstants.LOG_OPERATION_TYPE_ADD + role.getName(), request);
        }catch(Exception e){
            JshException.writeFail(logger, e);
        }
        return result;
    }

    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int updateRole(JSONObject obj, HttpServletRequest request) {
        Role role = JSONObject.parseObject(obj.toJSONString(), Role.class);
        int result=0;
        try{
            result=roleMapper.updateByPrimaryKeySelective(role);
            logService.insertLog("角色",
                    BusinessConstants.LOG_OPERATION_TYPE_EDIT + role.getName(), request);
        }catch(Exception e){
            JshException.writeFail(logger, e);
        }
        return result;
    }

    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int deleteRole(Long id, HttpServletRequest request) {
        return batchDeleteRoleByIds(id.toString());
    }

    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int batchDeleteRole(String ids, HttpServletRequest request) {
        return batchDeleteRoleByIds(ids);
    }

    public int checkIsNameExist(Long id, String name) {
        RoleExample example = new RoleExample();
        example.createCriteria().andIdNotEqualTo(id).andNameEqualTo(name).andDeleteFlagNotEqualTo(BusinessConstants.DELETE_FLAG_DELETED);
        List<Role> list =null;
        try{
            list=roleMapper.selectByExample(example);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return list==null?0:list.size();
    }

    public List<Role> findUserRole() {
        RoleExample example = new RoleExample();
        example.setOrderByClause("Id");
        example.createCriteria().andEnabledEqualTo(true).andDeleteFlagNotEqualTo(BusinessConstants.DELETE_FLAG_DELETED);
        List<Role> list=null;
        try{
            list=roleMapper.selectByExample(example);
        }catch(Exception e){
            JshException.readFail(logger, e);
        }
        return list;
    }
    /**
     *  逻辑删除角色信息
     * @Param: ids
     * @return int
     */
    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int batchDeleteRoleByIds(String ids) {
        StringBuffer sb = new StringBuffer();
        sb.append(BusinessConstants.LOG_OPERATION_TYPE_DELETE);
        List<Role> list = getRoleListByIds(ids);
        for(Role role: list){
            sb.append("[").append(role.getName()).append("]");
        }
        logService.insertLog("角色", sb.toString(),
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest());
        User userInfo = userService.getCurrentUser();
        String [] idArray=ids.split(",");
        int result=0;
        try{
            result=roleMapperEx.batchDeleteRoleByIds(new Date(),userInfo==null?null:userInfo.getId(),idArray);
        }catch(Exception e){
            JshException.writeFail(logger, e);
        }
        return result;
    }

    public Role getRoleWithoutTenant(Long roleId) {
        return roleMapperEx.getRoleWithoutTenant(roleId);
    }

    @Transactional(value = "transactionManager", rollbackFor = Exception.class)
    public int batchSetStatus(Boolean status, String ids) {
        logService.insertLog("角色",
                BusinessConstants.LOG_OPERATION_TYPE_ENABLED,
                ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest());
        List<Long> roleIds = StringUtil.strToLongList(ids);
        Role role = new Role();
        role.setEnabled(status);
        RoleExample example = new RoleExample();
        example.createCriteria().andIdIn(roleIds);
        int result=0;
        try{
            result = roleMapper.updateByExampleSelective(role, example);
        }catch(Exception e){
            JshException.writeFail(logger, e);
        }
        return result;
    }

    /**
     * 根据权限进行屏蔽价格-首页
     * @param price
     * @param type
     * @return
     */
    public Object parseHomePriceByLimit(BigDecimal price, String type, String priceLimit, String emptyInfo, HttpServletRequest request) {
        if(StringUtil.isNotEmpty(priceLimit)) {
            if("buy".equals(type) && priceLimit.contains("1")) {
                return emptyInfo;
            }
            if("retail".equals(type) && priceLimit.contains("2")) {
                return emptyInfo;
            }
            if("sale".equals(type) && priceLimit.contains("3")) {
                return emptyInfo;
            }
        }
        return price;
    }

    /**
     * 根据权限进行屏蔽价格-单据
     * @param price
     * @param billCategory
     * @param priceLimit
     * @param request
     * @return
     * @throws Exception
     */
    public BigDecimal parseBillPriceByLimit(BigDecimal price, String billCategory, String priceLimit, HttpServletRequest request) {
        if(StringUtil.isNotEmpty(priceLimit)) {
            if("buy".equals(billCategory) && priceLimit.contains("4")) {
                return BigDecimal.ZERO;
            }
            if("retail".equals(billCategory) && priceLimit.contains("5")) {
                return BigDecimal.ZERO;
            }
            if("sale".equals(billCategory) && priceLimit.contains("6")) {
                return BigDecimal.ZERO;
            }
        }
        return price;
    }

    /**
     * 根据权限进行屏蔽价格-物料
     * @param price
     * @param type
     * @return
     */
    public Object parseMaterialPriceByLimit(BigDecimal price, String type, String emptyInfo, HttpServletRequest request) {
        Long userId = userService.getUserId(request);
        String priceLimit = userService.getRoleTypeByUserId(userId).getPriceLimit();
        if(StringUtil.isNotEmpty(priceLimit)) {
            if("buy".equals(type) && priceLimit.contains("4")) {
                return emptyInfo;
            }
            if("retail".equals(type) && priceLimit.contains("5")) {
                return emptyInfo;
            }
            if("sale".equals(type) && priceLimit.contains("6")) {
                return emptyInfo;
            }
        }
        return price;
    }

    public String getCurrentPriceLimit(HttpServletRequest request) {
        Long userId = userService.getUserId(request);
        return userService.getRoleTypeByUserId(userId).getPriceLimit();
    }
}