package cn.zwz.tel.serviceimpl;

import cn.zwz.tel.mapper.FriendTypeMapper;
import cn.zwz.tel.entity.FriendType;
import cn.zwz.tel.service.IFriendTypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 朋友类型 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IFriendTypeServiceImpl extends ServiceImpl<FriendTypeMapper, FriendType> implements IFriendTypeService {

    @Autowired
    private FriendTypeMapper friendTypeMapper;
}