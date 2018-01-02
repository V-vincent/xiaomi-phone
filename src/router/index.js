import Vue from 'vue'
import Router from 'vue-router'
import Cart from '@/view/Cart'
import Cate from '@/view/Cate'
import site from '@/view/site'
import order from '@/view/order'
import My from '@/view/My'
const login = () => import('@/view/login')
const reg = () => import('@/view/reg')
const index = () => import('@/view/index')
const Goods = () => import('@/view/Goods')
const comment = () => import('@/view/comment')
const account = () => import('@/view/account')
const goodsSummary = () => import('@/components/goodsSummary')
const goodsParam = () => import('@/components/goodsParam')
const goodsInsure = () => import('@/components/goodsInsure')

Vue.use(Router)

const router = new Router({
  routes: [
    {
      path: '/',
      alias: '/index',
      component: index
    },
    {
      path: '/cart',
      component: Cart
    },
    {
      path: '/cate',
      component: Cate
    },
    {
      name: 'goods',
      path: '/goods/:id',
      component: Goods,
      children: [
        {
          path: '',
          component: goodsSummary
        },
        {
          path: 'goodsParam',
          component: goodsParam
        },
        {
          path: 'goodsInsure',
          component: goodsInsure
        }
      ]
    },
    {
      path: '/comment',
      component: comment
    },
    {
      path: '/account',
      component: account
    },
    {
      name: '/my',
      path: '/my',
      component: My
    },
    {
      name: 'login',
      path: '/login',
      component: login
    },
    {
      name: 'reg',
      path: '/reg',
      component: reg
    },
    {
      name: 'order',
      path: '/order',
      component: order
    },
    {
      name: 'site',
      path: '/site',
      component: site
    }
  ]
})

router.beforeEach((to, from, next) => {
  // 如果是用户中心，有登录就进入，无进入登录
  if (to.name === 'my') {
    if (localStorage.getItem('uid') <= 0) {
      router.push('/my/login')
    }
  }
  // 如果是登录或注册，无登录就进入，有登录进个人中心
  next()
})

export default router
