package ypc.zwz.dao;

import java.util.List;

import org.hibernate.Query;

import core.dao.Dao;
import ypc.zwz.model.HouseType;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface HouseTypeDao extends Dao<HouseType> {

	public List<Object[]> queryExportedHouseType(Long[] ids);
}
