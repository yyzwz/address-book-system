package cn.zwz.modules.base.service;


import cn.zwz.base.XbootBaseService;
import cn.zwz.modules.base.entity.User;
import cn.zwz.modules.base.entity.UserRole;

import java.util.List;

/**
 * 用户角色接口
 * @author Exrickx
 */
public interface UserRoleService extends XbootBaseService<UserRole, String> {

    /**
     * 通过roleId查找
     * @param roleId
     * @return
     */
    List<UserRole> findByRoleId(String roleId);

    /**
     * 通过roleId查找用户
     * @param roleId
     * @return
     */
    List<User> findUserByRoleId(String roleId);

    /**
     * 删除用户角色
     * @param userId
     */
    void deleteByUserId(String userId);
}
