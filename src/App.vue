<template>
  <div id="app">
    <transition name="slide-fade">
      <router-view/>
    </transition>
    <!-- 组件在product的时候要隐藏 -->
    <Foot v-if="$route.name != 'product' && $route.name != 'login' && $route.name != 'reg' && $route.name != 'site' "></Foot>
    <cartFoot v-if="$route.name == 'goodsInfo'"></cartFoot>
  </div>
</template>

<script type="es6">
import Foot from '@/components/Foot'
import cartFoot from '@/components/cartFoot'
export default {
  name: 'app',
  components: {
    Foot,
    cartFoot
  },
  created(){
    this.$store.commit('init')
  }
}
</script>

<style lang="scss">
@import "./assets/common";

//页面切换效果
.slide-fade-enter-active {
  transition: all .5s ease;
}
.slide-fade-enter{
  transform: translateX(10px);
  opacity: 0;
}
</style>
