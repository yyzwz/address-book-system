// 统一请求路径前缀在libs/axios.js中修改
import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAddressBookTypeList = (params) => {
    return getRequest('/addressBookType/getByPage', params)
}
// 添加
export const addAddressBookType = (params) => {
    return postRequest('/addressBookType/insertOrUpdate', params)
}
// 编辑
export const editAddressBookType = (params) => {
    return putRequest('/addressBookType/insertOrUpdate', params)
}
// 删除
export const deleteAddressBookType = (params) => {
    return postRequest('/addressBookType/delByIds', params)
}