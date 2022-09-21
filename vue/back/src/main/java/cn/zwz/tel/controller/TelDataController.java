package cn.zwz.tel.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.tel.entity.TelData;
import cn.zwz.tel.service.ITelDataService;
import cn.hutool.core.util.StrUtil;
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
@Api(tags = "通讯录明细管理接口")
@RequestMapping("/zwz/telData")
@Transactional
public class TelDataController {

    @Autowired
    private ITelDataService iTelDataService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条通讯录明细")
    public Result<TelData> get(@RequestParam String id){
        return new ResultUtil<TelData>().setData(iTelDataService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部通讯录明细个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iTelDataService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部通讯录明细")
    public Result<List<TelData>> getAll(){
        return new ResultUtil<List<TelData>>().setData(iTelDataService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询通讯录明细")
    public Result<IPage<TelData>> getByPage(@ModelAttribute TelData telData ,@ModelAttribute PageVo page){
        QueryWrapper<TelData> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(telData.getUserName())) {
            qw.like("user_name",telData.getUserName());
        }
        if(!ZwzNullUtils.isNull(telData.getUserSex())) {
            qw.eq("user_sex",telData.getUserSex());
        }
        if(!ZwzNullUtils.isNull(telData.getMobile())) {
            qw.like("mobile",telData.getMobile());
        }
        IPage<TelData> data = iTelDataService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<TelData>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改通讯录明细")
    public Result<TelData> saveOrUpdate(TelData telData){
        if(iTelDataService.saveOrUpdate(telData)){
            return new ResultUtil<TelData>().setData(telData);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增通讯录明细")
    public Result<TelData> insert(TelData telData){
        iTelDataService.saveOrUpdate(telData);
        return new ResultUtil<TelData>().setData(telData);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑通讯录明细")
    public Result<TelData> update(TelData telData){
        iTelDataService.saveOrUpdate(telData);
        return new ResultUtil<TelData>().setData(telData);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除通讯录明细")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iTelDataService.removeById(id);
        }
        return ResultUtil.success();
    }
}
