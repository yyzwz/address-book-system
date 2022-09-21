package cn.zwz.tel.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.tel.entity.CallRecord;
import cn.zwz.tel.entity.TelData;
import cn.zwz.tel.service.ICallRecordService;
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
@Api(tags = "通话记录管理接口")
@RequestMapping("/zwz/callRecord")
@Transactional
public class CallRecordController {

    @Autowired
    private ICallRecordService iCallRecordService;

    @Autowired
    private ITelDataService iTelDataService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条通话记录")
    public Result<CallRecord> get(@RequestParam String id){
        return new ResultUtil<CallRecord>().setData(iCallRecordService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部通话记录个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iCallRecordService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部通话记录")
    public Result<List<CallRecord>> getAll(){
        return new ResultUtil<List<CallRecord>>().setData(iCallRecordService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询通话记录")
    public Result<IPage<CallRecord>> getByPage(@ModelAttribute CallRecord callRecord ,@ModelAttribute PageVo page){
        QueryWrapper<CallRecord> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(callRecord.getUserName())) {
            qw.like("user_name",callRecord.getUserName());
        }
        if(!ZwzNullUtils.isNull(callRecord.getMobile())) {
            qw.like("mobile",callRecord.getMobile());
        }
        IPage<CallRecord> data = iCallRecordService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<CallRecord>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改通话记录")
    public Result<CallRecord> saveOrUpdate(CallRecord callRecord){
        if(iCallRecordService.saveOrUpdate(callRecord)){
            return new ResultUtil<CallRecord>().setData(callRecord);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增通话记录")
    public Result<CallRecord> insert(CallRecord callRecord){
        if(ZwzNullUtils.isNull(callRecord.getUserId())) {
            return ResultUtil.error("通话人不能为空");
        }
        TelData telData = iTelDataService.getById(callRecord.getUserId());
        if(telData == null) {
            return ResultUtil.error("通话人不存在");
        }
        callRecord.setUserName(telData.getUserName());
        callRecord.setMobile(telData.getMobile());
        iCallRecordService.saveOrUpdate(callRecord);
        return new ResultUtil<CallRecord>().setData(callRecord);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑通话记录")
    public Result<CallRecord> update(CallRecord callRecord){
        if(ZwzNullUtils.isNull(callRecord.getUserId())) {
            return ResultUtil.error("通话人不能为空");
        }
        TelData telData = iTelDataService.getById(callRecord.getUserId());
        if(telData == null) {
            return ResultUtil.error("通话人不存在");
        }
        callRecord.setUserName(telData.getUserName());
        callRecord.setMobile(telData.getMobile());
        iCallRecordService.saveOrUpdate(callRecord);
        return new ResultUtil<CallRecord>().setData(callRecord);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除通话记录")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iCallRecordService.removeById(id);
        }
        return ResultUtil.success();
    }
}
