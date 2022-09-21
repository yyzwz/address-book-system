package ypc.zwz.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import core.dao.Dao;
import ypc.zwz.model.SysUser;
import ypc.zwz.model.Tel;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface TelDao extends Dao<Tel> {
	
	List<Object[]> queryExportedTel(Long[] ids);

	
    void updateTel(Tel tel);
    int saveTelTwoDimensionalCode(HttpServletRequest request, String filePath,Long id);//saveHouseTwoDimensionalCode
}
