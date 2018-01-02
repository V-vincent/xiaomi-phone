<template>
	<div class="foot_menu_box">
		<router-link to="/index" active-class="active-menu">首页</router-link>
		<router-link to="/cate" active-class="active-menu">分类</router-link>
		<router-link to="/cart" active-class="active-menu">
			<el-badge :value="cart_num">购物车</el-badge>
		</router-link>
		<router-link to="/my" active-class="active-menu">我的</router-link>
	</div>
</template>
<script type="es6">
import {mapState} from 'Vuex'
	export default {
		data(){
			return {

			}
		},
		computed: {
			...mapState(['cart_num'])
		}
	}
</script>
<style lang="scss">
@import "../assets/common";
.foot_menu_box{
	z-index: 99;
	background: #fff;
	position: fixed;bottom:0;left:0;
	width:100%;
	a{
		@include flotter(25%);
		text-align:center;
		font-size:20px;
		height: 39px;
		line-height: 39px; 
		color:#999;
	}	
	.active-menu{
		color:$topic_css;
	}	
}

</style>
<style>

</style>