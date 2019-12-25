  
import axios from 'axios'

const service = axios.create({
  baseURL: 'http://127.0.0.1:5000/api',
  timeout: 0
})

service.interceptors.response.use(
  response => {
    return response.data
  },
  error => {
    return Promise.reject(error)
  }
)

export default service