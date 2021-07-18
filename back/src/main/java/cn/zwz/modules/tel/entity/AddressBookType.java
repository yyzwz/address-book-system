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
@Table(name = "t_address_book_type")
@TableName("t_address_book_type")
@ApiModel(value = "通讯录类型")
public class AddressBookType extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "类型标题")
    private String title;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "等级")
    private String level;
}