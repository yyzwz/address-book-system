import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getTelDataOne = (params) => {
    return getRequest('/telData/getOne', params)
}
export const getTelDataList = (params) => {
    return getRequest('/telData/getByPage', params)
}
export const getTelDataCount = (params) => {
    return getRequest('/telData/count', params)
}
export const addTelData = (params) => {
    return postRequest('/telData/insert', params)
}
export const editTelData = (params) => {
    return postRequest('/telData/update', params)
}
export const addOrEditTelData = (params) => {
    return postRequest('/telData/insertOrUpdate', params)
}
export const deleteTelData = (params) => {
    return postRequest('/telData/delByIds', params)
}
export const getAllFriendTypeList = (params) => {
    return getRequest('/friendType/getAll', params)
}