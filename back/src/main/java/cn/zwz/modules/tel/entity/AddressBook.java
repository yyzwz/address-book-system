package cn.zwz.modules.tel.entity;

import cn.zwz.base.XbootBaseEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author 郑为中
 */
@Data
@Accessors(chain = true)
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "t_address_book")
@TableName("t_address_book")
@ApiModel(value = "通讯录")
public class AddressBook extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "姓名")
    private String userName;

    @ApiModelProperty(value = "类型ID")
    private String type;

    @ApiModelProperty(value = "电话号码")
    private String mobile;

    @ApiModelProperty(value = "QQ号码")
    private String qq;

    @ApiModelProperty(value = "微信号")
    private String weChat;

    @ApiModelProperty(value = "出生日期")
    private String birth;

    @ApiModelProperty(value = "年龄")
    private int age;

    @ApiModelProperty(value = "籍贯")
    private String city;

    @ApiModelProperty(value = "身份证号")
    private String idCard;

    @ApiModelProperty(value = "学历学位")
    private String education;

    @ApiModelProperty(value = "毕业院校")
    private String school;

    @ApiModelProperty(value = "婚姻状态")
    private String love;

    @ApiModelProperty(value = "公司")
    private String company;
}