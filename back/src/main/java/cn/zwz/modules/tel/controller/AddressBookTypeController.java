package cn.zwz.modules.tel.controller;

import cn.zwz.common.utils.PageUtil;
import cn.zwz.common.utils.ResultUtil;
import cn.zwz.common.vo.PageVo;
import cn.zwz.common.vo.Result;
import cn.zwz.modules.tel.entity.AddressBookType;
import cn.zwz.modules.tel.service.IAddressBookTypeService;
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
@Api(tags = "通讯录类型管理接口")
@RequestMapping("/zwz/addressBookType")
@Transactional
public class AddressBookTypeController {

    @Autowired
    private IAddressBookTypeService iAddressBookTypeService;

    @RequestMapping(value = "/get/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "通过id获取")
    public Result<AddressBookType> get(@PathVariable String id) {

        AddressBookType addressBookType = iAddressBookTypeService.getById(id);
        return new ResultUtil<AddressBookType>().setData(addressBookType);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "获取全部数据")
    public Result<List<AddressBookType>> getAll() {

        List<AddressBookType> list = iAddressBookTypeService.list();
        return new ResultUtil<List<AddressBookType>>().setData(list);
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "分页获取")
    public Result<IPage<AddressBookType>> getByPage(@ModelAttribute AddressBookType type,@ModelAttribute PageVo page) {
        QueryWrapper<AddressBookType> qw = new QueryWrapper<>();
        if(type.getTitle() != null && NullUtils.isNull(type.getTitle())) {
            qw.like("title",type.getTitle());
        }
        IPage<AddressBookType> data = iAddressBookTypeService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<AddressBookType>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "编辑或更新数据")
    public Result<AddressBookType> saveOrUpdate(AddressBookType addressBookType) {

        if (iAddressBookTypeService.saveOrUpdate(addressBookType)) {
            return new ResultUtil<AddressBookType>().setData(addressBookType);
        }
        return new ResultUtil<AddressBookType>().setErrorMsg("操作失败");
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "批量通过id删除")
    public Result<Object> delAllByIds(@RequestParam String[] ids) {

        for (String id : ids) {
            iAddressBookTypeService.removeById(id);
        }
        return ResultUtil.success("批量通过id删除数据成功");
    }
}
