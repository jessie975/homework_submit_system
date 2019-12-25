import request from './request'

export function getList(page, size) {
  return request({
    url: '/getList',
    method: 'get',
    params: {
      page,
      size
    }
  })
}

// export function upload(data) {
//   return request({
//     url: '/upload',
//     method: 'post',
//     params: data
//   })
// }

export function submit(data) {
  return request({
    url: '/submit',
    method: 'post',
    data
  })
}