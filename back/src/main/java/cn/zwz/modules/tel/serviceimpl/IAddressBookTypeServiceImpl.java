package cn.zwz.modules.tel.serviceimpl;

import cn.zwz.modules.tel.mapper.AddressBookTypeMapper;
import cn.zwz.modules.tel.entity.AddressBookType;
import cn.zwz.modules.tel.service.IAddressBookTypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * 通讯录类型接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IAddressBookTypeServiceImpl extends ServiceImpl<AddressBookTypeMapper, AddressBookType> implements IAddressBookTypeService {

    @Autowired
    private AddressBookTypeMapper addressBookTypeMapper;
}