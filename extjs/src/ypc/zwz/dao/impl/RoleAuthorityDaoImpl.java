package ypc.zwz.dao.impl;

import org.springframework.stereotype.Repository;

import core.dao.BaseDao;
import ypc.zwz.dao.RoleAuthorityDao;
import ypc.zwz.model.RoleAuthority;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

@Repository
public class RoleAuthorityDaoImpl extends BaseDao<RoleAuthority> implements RoleAuthorityDao {

	public RoleAuthorityDaoImpl() {
		super(RoleAuthority.class);
	}
}
