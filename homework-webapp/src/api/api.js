import request from './request'

export function getWorkList(page, size) {
  return request({
    url: '/getWorkList',
    method: 'get',
    params: {
      page,
      size
    }
  })
}
export function submit(data) {
  return request({
    url: '/submit',
    method: 'post',
    data
  })
}
