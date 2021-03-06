package cn.zwz.modules.base.controller.manage;

import cn.zwz.common.annotation.SystemLog;
import cn.zwz.common.constant.CommonConstant;
import cn.zwz.common.enums.LogType;
import cn.zwz.common.exception.XbootException;
import cn.zwz.common.redis.RedisTemplateHelper;
import cn.zwz.common.utils.PageUtil;
import cn.zwz.common.utils.ResultUtil;
import cn.zwz.common.utils.SecurityUtil;
import cn.zwz.common.utils.StopWordsUtil;
import cn.zwz.common.vo.PageVo;
import cn.zwz.common.vo.Result;
import cn.zwz.common.vo.SearchVo;
import cn.zwz.config.security.SecurityUserDetails;
import cn.zwz.modules.base.async.AddMessage;
import cn.zwz.modules.base.dao.mapper.DeleteMapper;
import cn.zwz.modules.base.entity.Department;
import cn.zwz.modules.base.entity.Role;
import cn.zwz.modules.base.entity.User;
import cn.zwz.modules.base.entity.UserRole;
import cn.zwz.modules.base.service.*;
import cn.zwz.modules.base.service.mybatis.IUserRoleService;
import cn.zwz.modules.base.vo.RoleDTO;
import cn.hutool.core.util.StrUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.data.domain.Page;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


/**
 * @author Exrickx
 */
@Slf4j
@RestController
@Api(tags = "????????????")
@RequestMapping("/zwz/user")
@CacheConfig(cacheNames = "user")
@Transactional
public class UserController {

    public static final String USER = "user::";

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private DepartmentService departmentService;

    @Autowired
    private DepartmentHeaderService departmentHeaderService;

    @Autowired
    private IUserRoleService iUserRoleService;

    @Autowired
    private UserRoleService userRoleService;

    @Autowired
    private AddMessage addMessage;

    @Autowired
    private DeleteMapper deleteMapper;

    @Autowired
    private RedisTemplateHelper redisTemplate;

    @Autowired
    private SecurityUtil securityUtil;

    @PersistenceContext
    private EntityManager entityManager;

    @RequestMapping(value = "/smsLogin", method = RequestMethod.POST)
    @SystemLog(description = "????????????", type = LogType.LOGIN)
    @ApiOperation(value = "??????????????????")
    public Result<Object> smsLogin(@RequestParam String mobile,
                                   @RequestParam(required = false) Boolean saveLogin) {

        User u = userService.findByMobile(mobile);
        if (u == null) {
            throw new XbootException("??????????????????");
        }
        String accessToken = securityUtil.getToken(u.getUsername(), saveLogin);
        // ??????????????????
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(new SecurityUserDetails(u), null, null);
        SecurityContextHolder.getContext().setAuthentication(authentication);
        return ResultUtil.data(accessToken);
    }

    @RequestMapping(value = "/resetByMobile", method = RequestMethod.POST)
    @ApiOperation(value = "????????????????????????")
    public Result<Object> resetByMobile(@RequestParam String mobile,
                                        @RequestParam String password,
                                        @RequestParam String passStrength) {

        User u = userService.findByMobile(mobile);
        String encryptPass = new BCryptPasswordEncoder().encode(password);
        u.setPassword(encryptPass).setPassStrength(passStrength);
        userService.update(u);
        // ????????????
        redisTemplate.delete(USER + u.getUsername());
        return ResultUtil.success("??????????????????");
    }

    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    @ApiOperation(value = "????????????")
    public Result<Object> regist(@Valid User u) {

        // ?????????????????????
        checkUserInfo(u.getUsername(), u.getMobile(), u.getEmail());

        String encryptPass = new BCryptPasswordEncoder().encode(u.getPassword());
        u.setPassword(encryptPass).setType(CommonConstant.USER_TYPE_NORMAL);
        User user = userService.save(u);

        // ????????????
        List<Role> roleList = roleService.findByDefaultRole(true);
        if (roleList != null && roleList.size() > 0) {
            for (Role role : roleList) {
                UserRole ur = new UserRole().setUserId(user.getId()).setRoleId(role.getId());
                userRoleService.save(ur);
            }
        }
        // ??????????????????????????????
        addMessage.addSendMessage(user.getId());

        return ResultUtil.data(user);
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    @ApiOperation(value = "??????????????????????????????")
    public Result<User> getUserInfo() {

        User u = securityUtil.getCurrUser();
        // ??????????????????????????? ?????????????????????????????????
        entityManager.clear();
        u.setPassword(null);
        return new ResultUtil<User>().setData(u);
    }

    @RequestMapping(value = "/changeMobile", method = RequestMethod.POST)
    @ApiOperation(value = "??????????????????")
    public Result<Object> changeMobile(@RequestParam String mobile) {

        User u = securityUtil.getCurrUser();
        u.setMobile(mobile);
        userService.update(u);
        // ????????????
        redisTemplate.delete(USER + u.getUsername());
        return ResultUtil.success("?????????????????????");
    }

    @RequestMapping(value = "/unlock", method = RequestMethod.POST)
    @ApiOperation(value = "??????????????????")
    public Result<Object> unLock(@RequestParam String password) {

        User u = securityUtil.getCurrUser();
        if (!new BCryptPasswordEncoder().matches(password, u.getPassword())) {
            return ResultUtil.error("???????????????");
        }
        return ResultUtil.data(null);
    }

    @RequestMapping(value = "/resetPass", method = RequestMethod.POST)
    @ApiOperation(value = "????????????")
    public Result<Object> resetPass(@RequestParam String[] ids) {

        for (String id : ids) {
            User u = userService.get(id);
            // ??????DEMO??????
            if ("test".equals(u.getUsername()) || "test2".equals(u.getUsername()) || "admin".equals(u.getUsername())) {
                throw new XbootException("??????????????????????????????????????????");
            }
            u.setPassword(new BCryptPasswordEncoder().encode("123456"));
            userService.update(u);
            redisTemplate.delete(USER + u.getUsername());
        }
        return ResultUtil.success("????????????");
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ApiOperation(value = "????????????????????????", notes = "?????????????????????????????? ??????username????????????")
    @CacheEvict(key = "#u.username")
    public Result<Object> editOwn(User u) {

        User old = securityUtil.getCurrUser();
        // ?????????????????????
        u.setUsername(old.getUsername()).setPassword(old.getPassword()).setType(old.getType()).setStatus(old.getStatus());
        if (StrUtil.isBlank(u.getDepartmentId())) {
            u.setDepartmentId(null);
        }
        userService.update(u);
        return ResultUtil.success("????????????");
    }

    /**
     * ??????demo??????????????????????????????
     * @param password
     * @param newPass
     * @return
     */
    @RequestMapping(value = "/modifyPass", method = RequestMethod.POST)
    @ApiOperation(value = "????????????")
    public Result<Object> modifyPass(@ApiParam("?????????") @RequestParam String password,
                                     @ApiParam("?????????") @RequestParam String newPass,
                                     @ApiParam("????????????") @RequestParam String passStrength) {

        User user = securityUtil.getCurrUser();
        // ??????DEMO??????
        if ("test".equals(user.getUsername()) || "test2".equals(user.getUsername())) {
            return ResultUtil.error("?????????????????????????????????");
        }

        if (!new BCryptPasswordEncoder().matches(password, user.getPassword())) {
            return ResultUtil.error("??????????????????");
        }

        String newEncryptPass = new BCryptPasswordEncoder().encode(newPass);
        user.setPassword(newEncryptPass);
        user.setPassStrength(passStrength);
        userService.update(user);

        // ??????????????????
        redisTemplate.delete(USER + user.getUsername());

        return ResultUtil.success("??????????????????");
    }

    @RequestMapping(value = "/getByCondition", method = RequestMethod.GET)
    @ApiOperation(value = "?????????????????????????????????")
    public Result<Page<User>> getByCondition(User user,
                                             SearchVo searchVo,
                                             PageVo pageVo) {

        Page<User> page = userService.findByCondition(user, searchVo, PageUtil.initPage(pageVo));
        for (User u : page.getContent()) {
            // ????????????
            List<Role> list = iUserRoleService.findByUserId(u.getId());
            List<RoleDTO> roleDTOList = list.stream().map(e -> {
                return new RoleDTO().setId(e.getId()).setName(e.getName()).setDescription(e.getDescription());
            }).collect(Collectors.toList());
            u.setRoles(roleDTOList);
            // ????????? ?????????????????????????????????
            entityManager.detach(u);
            u.setPassword(null);
        }
        return new ResultUtil<Page<User>>().setData(page);
    }

    @RequestMapping(value = "/getByDepartmentId/{departmentId}", method = RequestMethod.GET)
    @ApiOperation(value = "?????????????????????????????????")
    public Result<List<User>> getByCondition(@PathVariable String departmentId) {

        List<User> list = userService.findByDepartmentId(departmentId);
        entityManager.clear();
        list.forEach(u -> {
            u.setPassword(null);
        });
        return new ResultUtil<List<User>>().setData(list);
    }

    @RequestMapping(value = "/searchByName/{username}", method = RequestMethod.GET)
    @ApiOperation(value = "???????????????????????????")
    public Result<List<User>> searchByName(@PathVariable String username) throws UnsupportedEncodingException {

        List<User> list = userService.findByUsernameLikeAndStatus(URLDecoder.decode(username, "utf-8"), CommonConstant.STATUS_NORMAL);
        entityManager.clear();
        list.forEach(u -> {
            u.setPassword(null);
        });
        return new ResultUtil<List<User>>().setData(list);
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "????????????????????????")
    public Result<List<User>> getAll() {

        List<User> list = userService.getAll();
        // ??????????????????????????? ?????????????????????????????????
        entityManager.clear();
        for (User u : list) {
            u.setPassword(null);
        }
        return new ResultUtil<List<User>>().setData(list);
    }

    @RequestMapping(value = "/admin/add", method = RequestMethod.POST)
    @ApiOperation(value = "????????????")
    public Result<Object> add(@Valid User u,
                              @RequestParam(required = false) String[] roleIds) {

        // ?????????????????????
        checkUserInfo(u.getUsername(), u.getMobile(), u.getEmail());

        String encryptPass = new BCryptPasswordEncoder().encode(u.getPassword());
        u.setPassword(encryptPass);
        if (StrUtil.isNotBlank(u.getDepartmentId())) {
            Department d = departmentService.get(u.getDepartmentId());
            if (d != null) {
                u.setDepartmentTitle(d.getTitle());
            }
        } else {
            u.setDepartmentId(null);
            u.setDepartmentTitle("");
        }
        User user = userService.save(u);

        if (roleIds != null) {
            // ????????????
            List<UserRole> userRoles = Arrays.asList(roleIds).stream().map(e -> {
                return new UserRole().setUserId(u.getId()).setRoleId(e);
            }).collect(Collectors.toList());
            userRoleService.saveOrUpdateAll(userRoles);
        }
        // ????????????????????????
        addMessage.addSendMessage(user.getId());

        return ResultUtil.success("????????????");
    }

    @RequestMapping(value = "/admin/edit", method = RequestMethod.POST)
    @ApiOperation(value = "?????????????????????", notes = "????????????id????????????????????? ??????username????????????")
    @CacheEvict(key = "#u.username")
    public Result<Object> edit(User u,
                               @RequestParam(required = false) String[] roleIds) {

        User old = userService.get(u.getId());

        u.setUsername(old.getUsername());
        // ?????????????????????????????????????????????
        if (!old.getMobile().equals(u.getMobile()) && userService.findByMobile(u.getMobile()) != null) {
            return ResultUtil.error("?????????????????????????????????");
        }
        if (!old.getEmail().equals(u.getEmail()) && userService.findByEmail(u.getEmail()) != null) {
            return ResultUtil.error("??????????????????????????????");
        }

        if (StrUtil.isNotBlank(u.getDepartmentId())) {
            Department d = departmentService.get(u.getDepartmentId());
            if (d != null) {
                u.setDepartmentTitle(d.getTitle());
            }
        } else {
            u.setDepartmentId(null);
            u.setDepartmentTitle("");
        }

        u.setPassword(old.getPassword());
        userService.update(u);
        // ?????????????????????
        userRoleService.deleteByUserId(u.getId());
        if (roleIds != null) {
            // ?????????
            List<UserRole> userRoles = Arrays.asList(roleIds).stream().map(e -> {
                return new UserRole().setRoleId(e).setUserId(u.getId());
            }).collect(Collectors.toList());
            userRoleService.saveOrUpdateAll(userRoles);
        }
        // ??????????????????
        redisTemplate.delete("userRole::" + u.getId());
        redisTemplate.delete("userRole::depIds:" + u.getId());
        redisTemplate.delete("permission::userMenuList:" + u.getId());
        return ResultUtil.success("????????????");
    }

    @RequestMapping(value = "/admin/disable/{userId}", method = RequestMethod.POST)
    @ApiOperation(value = "??????????????????")
    public Result<Object> disable(@ApiParam("????????????id??????") @PathVariable String userId) {

        User user = userService.get(userId);
        user.setStatus(CommonConstant.USER_STATUS_LOCK);
        userService.update(user);
        // ??????????????????
        redisTemplate.delete(USER + user.getUsername());
        return ResultUtil.success("????????????");
    }

    @RequestMapping(value = "/admin/enable/{userId}", method = RequestMethod.POST)
    @ApiOperation(value = "??????????????????")
    public Result<Object> enable(@ApiParam("????????????id??????") @PathVariable String userId) {

        User user = userService.get(userId);
        user.setStatus(CommonConstant.USER_STATUS_NORMAL);
        userService.update(user);
        // ??????????????????
        redisTemplate.delete(USER + user.getUsername());
        return ResultUtil.success("????????????");
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "????????????ids??????")
    public Result<Object> delAllByIds(@RequestParam String[] ids) {

        for (String id : ids) {
            User u = userService.get(id);
            // ??????????????????
            redisTemplate.delete(USER + u.getUsername());
            redisTemplate.delete("userRole::" + u.getId());
            redisTemplate.delete("userRole::depIds:" + u.getId());
            redisTemplate.delete("permission::userMenuList:" + u.getId());
            redisTemplate.deleteByPattern("department::*");

            userService.delete(id);

            // ??????????????????
            userRoleService.deleteByUserId(id);
            // ???????????????????????????
            departmentHeaderService.deleteByUserId(id);

            // ???????????????????????????????????????
            try {
                deleteMapper.deleteActNode(u.getId());
                deleteMapper.deleteActStarter(u.getId());
                deleteMapper.deleteSocial(u.getUsername());
            } catch (Exception e) {
                log.warn(e.toString());
            }
        }
        return ResultUtil.success("????????????id??????????????????");
    }

    @RequestMapping(value = "/importData", method = RequestMethod.POST)
    @ApiOperation(value = "??????????????????")
    public Result<Object> importData(@RequestBody List<User> users) {

        List<Integer> errors = new ArrayList<>();
        List<String> reasons = new ArrayList<>();
        int count = 0;
        for (User u : users) {
            count++;
            // ???????????????????????????????????????????????????
            if (StrUtil.isBlank(u.getUsername()) || StrUtil.isBlank(u.getPassword()) || StrUtil.isBlank(u.getMobile())
                    || StrUtil.isBlank(u.getEmail())) {
                errors.add(count);
                reasons.add("????????????????????????????????????????????????");
                continue;
            }
            // ???????????????????????????????????????
            if (userService.findByUsername(u.getUsername()) != null || userService.findByMobile(u.getMobile()) != null
                    || userService.findByEmail(u.getEmail()) != null) {
                errors.add(count);
                reasons.add("????????????????????????????????????");
                continue;
            }
            // ????????????
            u.setPassword(new BCryptPasswordEncoder().encode(u.getPassword()));
            // ????????????id?????????
            if (StrUtil.isNotBlank(u.getDepartmentId())) {
                Department department = departmentService.get(u.getDepartmentId());
                if (department == null) {
                    errors.add(count);
                    reasons.add("??????id?????????");
                    continue;
                }
                u.setDepartmentTitle(department.getTitle());
            }
            if (u.getStatus() == null) {
                u.setStatus(CommonConstant.USER_STATUS_NORMAL);
            }
            userService.save(u);
            // ??????????????????
            if (u.getDefaultRole() != null && u.getDefaultRole() == 1) {
                List<Role> roleList = roleService.findByDefaultRole(true);
                if (roleList != null && roleList.size() > 0) {
                    for (Role role : roleList) {
                        UserRole ur = new UserRole().setUserId(u.getId()).setRoleId(role.getId());
                        userRoleService.save(ur);
                    }
                }
            }
        }
        // ??????????????????
        int successCount = users.size() - errors.size();
        String successMessage = "??????????????????????????? " + successCount + " ?????????";
        String failMessage = "???????????? " + successCount + " ???????????? " + errors.size() + " ????????????<br>" +
                "??? " + errors.toString() + " ????????????????????????????????????????????????<br>" + reasons.toString();
        String message = "";
        if (errors.isEmpty()) {
            message = successMessage;
        } else {
            message = failMessage;
        }
        return ResultUtil.success(message);
    }

    /**
     * ??????
     * @param username ????????? ????????????????????????null ??????
     * @param mobile   ?????????
     * @param email    ??????
     */
    public void checkUserInfo(String username, String mobile, String email) {

        // ?????????
        StopWordsUtil.matchWord(username);

        if (StrUtil.isNotBlank(username) && userService.findByUsername(username) != null) {
            throw new XbootException("???????????????????????????");
        }
        if (StrUtil.isNotBlank(email) && userService.findByEmail(email) != null) {
            throw new XbootException("?????????????????????");
        }
        if (StrUtil.isNotBlank(mobile) && userService.findByMobile(mobile) != null) {
            throw new XbootException("????????????????????????");
        }
    }
}
