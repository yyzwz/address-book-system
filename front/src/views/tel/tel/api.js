// 统一请求路径前缀在libs/axios.js中修改
import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAddressBookList = (params) => {
    return getRequest('/addressBook/getByPage', params)
}
// 添加
export const addAddressBook = (params) => {
    return postRequest('/addressBook/insertOrUpdate', params)
}
// 编辑
export const editAddressBook = (params) => {
    return putRequest('/addressBook/insertOrUpdate', params)
}
// 删除
export const deleteAddressBook = (params) => {
    return postRequest('/addressBook/delByIds', params)
}
export const getAddressBookTypeList = (params) => {
    return getRequest('/addressBookType/getAll', params)
}