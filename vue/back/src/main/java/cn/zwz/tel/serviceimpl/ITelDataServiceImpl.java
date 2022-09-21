package cn.zwz.tel.serviceimpl;

import cn.zwz.tel.mapper.TelDataMapper;
import cn.zwz.tel.entity.TelData;
import cn.zwz.tel.service.ITelDataService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 通讯录明细 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class ITelDataServiceImpl extends ServiceImpl<TelDataMapper, TelData> implements ITelDataService {

    @Autowired
    private TelDataMapper telDataMapper;
}