package cn.zwz.modules.file.service;

import cn.zwz.base.XbootBaseService;
import cn.zwz.common.vo.SearchVo;
import cn.zwz.modules.file.entity.File;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * 文件管理接口
 * @author Exrick
 */
public interface FileService extends XbootBaseService<File, String> {

    /**
     * 多条件获取列表
     * @param file
     * @param searchVo
     * @param pageable
     * @return
     */
    Page<File> findByCondition(File file, SearchVo searchVo, Pageable pageable);
}