// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import mintUi from 'mint-ui'
import 'mint-ui/lib/style.min.css'
import elementUi from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import store from './store'

import axios from 'axios'
import qs from 'qs'

if (process.env.NODE_ENV === 'development') {
  axios.defaults.baseURL = 'http://localhost/php/xiaomi_object'
} else {
  axios.defaults.baseURL = 'http://www.xiaomi.com'
}

axios.interceptors.request.use(function (config) {
  config.data = qs.stringify(config.data)
  return config
}, function (error) {
  return Promise.reject(error)
})

Vue.config.productionTip = false
Vue.use(mintUi)
Vue.use(elementUi)
Vue.prototype.$http = axios

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})
