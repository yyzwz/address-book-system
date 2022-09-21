import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getCallRecordOne = (params) => {
    return getRequest('/callRecord/getOne', params)
}
export const getCallRecordList = (params) => {
    return getRequest('/callRecord/getByPage', params)
}
export const getCallRecordCount = (params) => {
    return getRequest('/callRecord/count', params)
}
export const addCallRecord = (params) => {
    return postRequest('/callRecord/insert', params)
}
export const editCallRecord = (params) => {
    return postRequest('/callRecord/update', params)
}
export const addOrEditCallRecord = (params) => {
    return postRequest('/callRecord/insertOrUpdate', params)
}
export const deleteCallRecord = (params) => {
    return postRequest('/callRecord/delByIds', params)
}
export const getAllTelDataList = (params) => {
    return getRequest('/telData/getAll', params)
}