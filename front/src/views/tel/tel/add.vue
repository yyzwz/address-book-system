<template>
  <div>
    <Card>
      <div slot="title">
        <div class="edit-head">
          <a @click="close" class="back-title">
            <Icon type="ios-arrow-back" />返回
          </a>
          <div class="head-name">添加</div>
          <span></span>
          <a @click="close" class="window-close">
            <Icon type="ios-close" size="31" class="ivu-icon-ios-close" />
          </a>
        </div>
      </div>
      <div style="width: 500px">
        <Form ref="form" :model="form" :rules="formValidate" :label-width="100" label-position="left">
          <FormItem label="姓名" prop="userName" >
            <Input v-model="form.userName" clearable/>
          </FormItem>
          <FormItem label="类型" prop="type" >
            <Select v-model="form.type" clearable>
              <Option v-for="(item,index) in addressBookTypeList" :key="index" :value="item.title">{{item.title}}</Option>
            </Select>
          </FormItem>
          <FormItem label="电话号码" prop="mobile" >
            <Input v-model="form.mobile" clearable/>
          </FormItem>
          <FormItem label="QQ号码" prop="qq" >
            <Input v-model="form.qq" clearable/>
          </FormItem>
          <FormItem label="微信号" prop="weChat" >
            <Input v-model="form.weChat" clearable/>
          </FormItem>
          <FormItem label="身份证号" prop="idCard" >
            <Input v-model="form.idCard" clearable/>
          </FormItem>
          <FormItem label="出生日期" prop="birth" >
            <DatePicker type="date" v-model="form.birth" clearable style="width: 100%"></DatePicker>
          </FormItem>
          <FormItem label="年龄" prop="age" >
            <InputNumber v-model="form.age" style="width:100%"></InputNumber>
          </FormItem>
          <FormItem label="籍贯" prop="city" >
            <al-cascader v-model="form.city" data-type="name" level="2"/>
          </FormItem>
          <FormItem label="学历学位" prop="education" >
            <Select v-model="form.education" clearable>
              <Option value="博士">博士</Option>
              <Option value="硕士">硕士</Option>
              <Option value="本科">本科</Option>
              <Option value="大专">大专</Option>
            </Select>
          </FormItem>
          <FormItem label="毕业院校" prop="school" >
            <Input v-model="form.school" clearable/>
          </FormItem>
          <FormItem label="婚姻状态" prop="love" >
            <Select v-model="form.love" clearable>
              <Option value="未婚">未婚</Option>
              <Option value="已婚">已婚</Option>
              <Option value="离异">离异</Option>
            </Select>
          </FormItem>
          <FormItem label="公司" prop="company" >
            <Input v-model="form.company" clearable/>
          </FormItem>
          <FormItem class="br">
            <Button @click="handleSubmit" :loading="submitLoading" type="primary">提交并保存</Button>
            <Button @click="handleReset">重置</Button>
            <Button type="dashed" @click="close">关闭</Button>
          </FormItem>
        </Form>
      </div>
    </Card>
  </div>
</template>

<script>
import { addAddressBook,getAddressBookTypeList } from "./api.js";
export default {
  name: "add",
  components: {
  },
  data() {
    return {
      addressBookTypeList: [],
      submitLoading: false, // 表单提交状态
      form: { // 添加或编辑表单对象初始化数据
        userName: "",
        type: "",
        mobile: "",
        qq: "",
        weChat: "",
        birth: "",
        age: 0,
        city: [],
        idCard: "",
        education: "",
        school: "",
        love: "",
        company: "",
      },
      // 表单验证规则
      formValidate: {
      }
    };
  },
  methods: {
    init() {
      this.getAddressBookTypeListFx();
    },
    getAddressBookTypeListFx() {
      var that = this;
      getAddressBookTypeList().then(res => {
        that.addressBookTypeList = res.result;
      })
    },
    handleReset() {
      this.$refs.form.resetFields();
    },
    handleSubmit() {
      this.$refs.form.validate(valid => {
        if (valid) {
          if (typeof this.form.birth == "object") {
            this.form.birth = this.format(this.form.birth, "yyyy-MM-dd");
          }
          this.submitLoading = true;
          addAddressBook(this.form).then(res => {
            this.submitLoading = false;
            if (res.success) {
              this.$Message.success("操作成功");
              this.submited();
            }
          });
        }
      });
    },
    close() {
      this.$emit("close", true);
    },
    submited() {
      this.$emit("submited", true);
    }
  },
  mounted() {
    this.init();
  }
};
</script>
<style lang="less">
// 建议引入通用样式 具体路径自行修改 可删除下面样式代码
// @import "@/styles/single-common.less";
.edit-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;

    .back-title {
        color: #515a6e;
        display: flex;
        align-items: center;
    }

    .head-name {
        display: inline-block;
        height: 20px;
        line-height: 20px;
        font-size: 16px;
        color: #17233d;
        font-weight: 500;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .window-close {
        z-index: 1;
        font-size: 12px;
        position: absolute;
        right: 0px;
        top: -5px;
        overflow: hidden;
        cursor: pointer;

        .ivu-icon-ios-close {
            color: #999;
            transition: color .2s ease;
        }
    }

    .window-close .ivu-icon-ios-close:hover {
        color: #444;
    }
}
</style>