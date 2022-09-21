package ypc.zwz.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import core.service.BaseService;
import ypc.zwz.dao.RoleAuthorityDao;
import ypc.zwz.model.RoleAuthority;
import ypc.zwz.service.RoleAuthorityService;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

@Service
public class RoleAuthorityServiceImpl extends BaseService<RoleAuthority> implements RoleAuthorityService {

	private RoleAuthorityDao roleAuthorityDao;

	@Resource
	public void setRoleAuthorityDao(RoleAuthorityDao roleAuthorityDao) {
		this.roleAuthorityDao = roleAuthorityDao;
		this.dao = roleAuthorityDao;
	}

}
