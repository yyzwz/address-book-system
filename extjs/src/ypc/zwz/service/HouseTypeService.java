package ypc.zwz.service;

import java.util.List;

import core.service.Service;
import ypc.zwz.model.HouseType;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface HouseTypeService extends Service<HouseType> {
	List<Object[]> queryExportedHouseType(Long[] ids);
}
