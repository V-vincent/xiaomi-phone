import Vue from 'vue'
import Vuex from 'vuex'
import lockr from 'lockr'
Vue.use(Vuex)

const stores = new Vuex.Store({
  state: {
    cart_num: 0,
    user_status: 0
  },
  mutations: {
    changeCart (state) {
      state.cart_num++
    },
    init (state) {
      state.cart_num = typeof (lockr.get('cart_list')) === 'undefined' ? 0 : lockr.get('cart_list').length
      state.user_status = typeof (localStorage.getItem('uid')) === 'undefined' ? 0 : 1
    },
    setUserStatus (state, user_info) {
      state.user_status = user_info[1]
    }
  }
})

export default stores
