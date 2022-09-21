package cn.zwz.tel.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author 郑为中
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_tel_data")
@TableName("a_tel_data")
@ApiModel(value = "通讯录明细")
public class TelData extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "姓名")
    private String userName;

    @ApiModelProperty(value = "朋友类型")
    private String friendType;

    @ApiModelProperty(value = "性别")
    private String userSex;

    @ApiModelProperty(value = "手机")
    private String mobile;

    @ApiModelProperty(value = "QQ")
    private String qq;

    @ApiModelProperty(value = "微信")
    private String wechat;

    @ApiModelProperty(value = "身份证")
    private String idCard;

    @ApiModelProperty(value = "地址")
    private String address;
}