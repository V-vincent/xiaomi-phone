<template>
	<div class="Cartfoot_menu_box">
		<router-link to="/index" active-class="Cartfoot_active-menu">首页</router-link>
		<router-link to="/cart" active-class="Cartfoot_active-menu">购物车</router-link>
		<input type="button" value="加入购物车" class="add_cart_button">
	</div>
</template>
<script></script>
<style lang="scss">
@import "../assets/common";
.Cartfoot_menu_box{
	border:1px #eee solid;
	z-index: 99;
	background: #fff;
	position: fixed;bottom:0;left:0;
	width:100%;
	a{
		@include flotter(25%);
		text-align:center;
		font-size:20px;
		height: 39px;
		line-height: 55px; 
		color:#999;
	}	
	.Cartfoot_active-menu{
		color:$topic_css;
	}
	.add_cart_button{
		width: 50%;
        -webkit-box-flex: 1;
        flex: 1;
        height: 50px;
        line-height: 50px;
        background-color: #f95b07;
        color: #fff;
        border:none;
	}
}

</style>
<style>
</style>