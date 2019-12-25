import Vue from 'vue'
import {
  Button,
  Container,
  Header,
  Main,
  Footer,
  Form,
  FormItem,
  Input,
  Select,
  Option,
  Upload,
  Message,
  Table,
  TableColumn,
  Pagination,
  Loading
} from 'element-ui'

Vue.use(Button)
Vue.use(Container)
Vue.use(Header)
Vue.use(Main)
Vue.use(Footer)
Vue.use(Form)
Vue.use(FormItem)
Vue.use(Input)
Vue.use(Select)
Vue.use(Option)
Vue.use(Upload)
Vue.use(Table)
Vue.use(TableColumn)
Vue.use(Pagination)

Vue.use(Loading.directive)

Vue.prototype.$loading = Loading.service

Vue.prototype.$message = Message
