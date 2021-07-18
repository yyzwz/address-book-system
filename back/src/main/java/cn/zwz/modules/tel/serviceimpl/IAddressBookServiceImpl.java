package cn.zwz.modules.tel.serviceimpl;

import cn.zwz.modules.tel.mapper.AddressBookMapper;
import cn.zwz.modules.tel.entity.AddressBook;
import cn.zwz.modules.tel.service.IAddressBookService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * 通讯录接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IAddressBookServiceImpl extends ServiceImpl<AddressBookMapper, AddressBook> implements IAddressBookService {

    @Autowired
    private AddressBookMapper addressBookMapper;
}