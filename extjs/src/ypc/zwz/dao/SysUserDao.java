package ypc.zwz.dao;

import java.util.List;

import core.dao.Dao;
import ypc.zwz.model.SysUser;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface SysUserDao extends Dao<SysUser> {
	List<Object[]> queryExportedSysUserDao(Long[] ids);
	
	SysUser login(String a_name);
	
	SysUser findByName(String a_name);
}
