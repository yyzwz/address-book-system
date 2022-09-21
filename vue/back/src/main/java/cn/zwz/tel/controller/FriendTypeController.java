package cn.zwz.tel.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.tel.entity.FriendType;
import cn.zwz.tel.entity.TelData;
import cn.zwz.tel.service.IFriendTypeService;
import cn.hutool.core.util.StrUtil;
import cn.zwz.tel.service.ITelDataService;
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
@Api(tags = "朋友类型管理接口")
@RequestMapping("/zwz/friendType")
@Transactional
public class FriendTypeController {

    @Autowired
    private IFriendTypeService iFriendTypeService;

    @Autowired
    private ITelDataService iTelDataService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条朋友类型")
    public Result<FriendType> get(@RequestParam String id){
        return new ResultUtil<FriendType>().setData(iFriendTypeService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部朋友类型个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iFriendTypeService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部朋友类型")
    public Result<List<FriendType>> getAll(){
        return new ResultUtil<List<FriendType>>().setData(iFriendTypeService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询朋友类型")
    public Result<IPage<FriendType>> getByPage(@ModelAttribute FriendType friendType,@ModelAttribute PageVo page){
        QueryWrapper<FriendType> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(friendType.getLevel())) {
            qw.eq("level",friendType.getLevel());
        }
        if(!ZwzNullUtils.isNull(friendType.getTitle())) {
            qw.like("title",friendType.getTitle());
        }
        IPage<FriendType> data = iFriendTypeService.page(PageUtil.initMpPage(page),qw);
        for (FriendType type : data.getRecords()) {
            QueryWrapper<TelData> dataQw = new QueryWrapper<>();
            dataQw.eq("friend_type",type.getTitle());
            type.setNumber(iTelDataService.count(dataQw));
        }
        return new ResultUtil<IPage<FriendType>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改朋友类型")
    public Result<FriendType> saveOrUpdate(FriendType friendType){
        if(iFriendTypeService.saveOrUpdate(friendType)){
            return new ResultUtil<FriendType>().setData(friendType);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增朋友类型")
    public Result<FriendType> insert(FriendType friendType){
        iFriendTypeService.saveOrUpdate(friendType);
        return new ResultUtil<FriendType>().setData(friendType);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑朋友类型")
    public Result<FriendType> update(FriendType friendType){
        iFriendTypeService.saveOrUpdate(friendType);
        return new ResultUtil<FriendType>().setData(friendType);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除朋友类型")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iFriendTypeService.removeById(id);
        }
        return ResultUtil.success();
    }
}
