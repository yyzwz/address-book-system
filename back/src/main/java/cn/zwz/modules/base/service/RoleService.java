package cn.zwz.modules.base.service;


import cn.zwz.base.XbootBaseService;
import cn.zwz.modules.base.entity.Role;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * 角色接口
 * @author Exrickx
 */
public interface RoleService extends XbootBaseService<Role, String> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);

    /**
     * 分页获取
     * @param key
     * @param pageable
     * @return
     */
    Page<Role> findByCondition(String key, Pageable pageable);
}
