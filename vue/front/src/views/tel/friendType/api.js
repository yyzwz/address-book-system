import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getFriendTypeOne = (params) => {
    return getRequest('/friendType/getOne', params)
}
export const getFriendTypeList = (params) => {
    return getRequest('/friendType/getByPage', params)
}
export const getFriendTypeCount = (params) => {
    return getRequest('/friendType/count', params)
}
export const addFriendType = (params) => {
    return postRequest('/friendType/insert', params)
}
export const editFriendType = (params) => {
    return postRequest('/friendType/update', params)
}
export const addOrEditFriendType = (params) => {
    return postRequest('/friendType/insertOrUpdate', params)
}
export const deleteFriendType = (params) => {
    return postRequest('/friendType/delByIds', params)
}