package cn.zwz.modules.tel.controller;

import cn.zwz.common.utils.PageUtil;
import cn.zwz.common.utils.ResultUtil;
import cn.zwz.common.vo.PageVo;
import cn.zwz.common.vo.Result;
import cn.zwz.modules.tel.entity.AddressBook;
import cn.zwz.modules.tel.service.IAddressBookService;
import cn.hutool.core.util.StrUtil;
import cn.zwz.modules.tel.utils.NullUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 郑为中
 */
@Slf4j
@RestController
@Api(tags = "通讯录管理接口")
@RequestMapping("/zwz/addressBook")
@Transactional
public class AddressBookController {

    @Autowired
    private IAddressBookService iAddressBookService;

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "通过id获取")
    public Result<AddressBook> get(@PathVariable String id) {

        AddressBook addressBook = iAddressBookService.getById(id);
        return new ResultUtil<AddressBook>().setData(addressBook);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "获取全部数据")
    public Result<List<AddressBook>> getAll() {

        List<AddressBook> list = iAddressBookService.list();
        return new ResultUtil<List<AddressBook>>().setData(list);
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "分页获取")
    public Result<IPage<AddressBook>> getByPage(@ModelAttribute AddressBook book,@ModelAttribute PageVo page) {
        QueryWrapper<AddressBook> qw = new QueryWrapper<>();
        if(book.getUserName() != null && !NullUtils.isNull(book.getUserName())) {
            qw.like("user_name",book.getUserName());
        }
        if(book.getMobile() != null && !NullUtils.isNull(book.getMobile())) {
            qw.like("mobile",book.getMobile());
        }
        IPage<AddressBook> data = iAddressBookService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<AddressBook>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "编辑或更新数据")
    public Result<AddressBook> saveOrUpdate(AddressBook addressBook) {

        if (iAddressBookService.saveOrUpdate(addressBook)) {
            return new ResultUtil<AddressBook>().setData(addressBook);
        }
        return new ResultUtil<AddressBook>().setErrorMsg("操作失败");
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "批量通过id删除")
    public Result<Object> delAllByIds(@RequestParam String[] ids) {

        for (String id : ids) {
            iAddressBookService.removeById(id);
        }
        return ResultUtil.success("批量通过id删除数据成功");
    }
}
