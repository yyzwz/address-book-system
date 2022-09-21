package ypc.zwz.model.param;

import core.extjs.ExtJSBaseParameter;

/**
 * 
 * @author 郑为中
 * 项目托管地址： https://gitee.com/yyzwz
 * 技术博客：https://zwz99.blog.csdn.net/
 */

public class TelParameter extends ExtJSBaseParameter {

	private static final long serialVersionUID = 6683658492945661067L;


	private Long $eq_relationshipId;
	private Long $eq_ownerId;
	private String $like_name;
	private String $like_tel;
	
	
	
	public String get$like_name() {
		return $like_name;
	}

	public void set$like_name(String $like_name) {
		this.$like_name = $like_name;
	}

	

	public String get$like_tel() {
		return $like_tel;
	}

	public void set$like_tel(String $like_tel) {
		this.$like_tel = $like_tel;
	}

	public Long get$eq_ownerId() {
		return $eq_ownerId;
	}

	public void set$eq_ownerId(Long $eq_ownerId) {
		this.$eq_ownerId = $eq_ownerId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Long get$eq_relationshipId() {
		return $eq_relationshipId;
	}

	public void set$eq_relationshipId(Long $eq_relationshipId) {
		this.$eq_relationshipId = $eq_relationshipId;
	}
}
