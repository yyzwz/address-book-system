package ypc.zwz.service;

import java.util.List;

import core.service.Service;
import ypc.zwz.model.SysUser;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface SysUserService extends Service<SysUser> {

	List<SysUser> getSysUserList(List<SysUser> resultList);
	List<Object[]> queryExportedSysUser(Long[] ids);
}
