package cn.zwz.tel.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.math.BigDecimal;

/**
 * @author 郑为中
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_friend_type")
@TableName("a_friend_type")
@ApiModel(value = "朋友类型")
public class FriendType extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "朋友类型")
    private String title;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "重要程度")
    private String level;

    @ApiModelProperty(value = "排序值")
    private BigDecimal sortOrder;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "人数")
    private Long number;
}