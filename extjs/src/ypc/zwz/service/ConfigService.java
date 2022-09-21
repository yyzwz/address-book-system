package ypc.zwz.service;

import java.util.List;

import core.service.Service;
import ypc.zwz.model.Config;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public interface ConfigService extends Service<Config> {

	List<Config> getConfigList(List<Config> resultList);

}
