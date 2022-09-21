package ypc.zwz.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import core.service.Service;
import ypc.zwz.model.Tel;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface TelService extends Service<Tel> {

	List<Object[]> queryExportedTel(Long[] ids);
	public int saveTelTwoDimensionalCode(HttpServletRequest request, String filePath,Long id);
	public void updateTel(Tel tel);
	
}
