package cn.zwz.tel.serviceimpl;

import cn.zwz.tel.mapper.CallRecordMapper;
import cn.zwz.tel.entity.CallRecord;
import cn.zwz.tel.service.ICallRecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 通话记录 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class ICallRecordServiceImpl extends ServiceImpl<CallRecordMapper, CallRecord> implements ICallRecordService {

    @Autowired
    private CallRecordMapper callRecordMapper;
}