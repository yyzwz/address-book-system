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
@Table(name = "a_call_record")
@TableName("a_call_record")
@ApiModel(value = "通话记录")
public class CallRecord extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "通话人ID")
    private String userId;

    @ApiModelProperty(value = "通话人")
    private String userName;

    @ApiModelProperty(value = "通话手机")
    private String mobile;

    @ApiModelProperty(value = "通话时长")
    private String telDuration;

    @ApiModelProperty(value = "通话日期")
    private String date;

    @ApiModelProperty(value = "通话类型")
    private String type;
}