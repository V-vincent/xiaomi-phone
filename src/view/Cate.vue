<template>
	<div class="cate">
		<!--头部-->
		<div class="header">
			<div class="left">
				<a class="home" data-stat-id="cd5c7618d7099ebb">
					<img src="//s1.mi.com/m/images/m/icon_back_n.png" class="ib">
				</a>
			</div>
			<div class="tit">
				<h2 data-log="HEAD-标题-商品分类">
					<span class="title">商品分类</span>
				</h2>
			</div>
		</div>
		<!--内容列表-->
		<div class="list-wrap">
			<!--左边-->
			<div :class="cur_left==1?'list-wrap-left list_left_f':'list-wrap-left'">
				<ul>
					<li v-for="cate in cate_list" :class="cur_index==cate_list.indexOf(cate)?'active':''" @click="active(cate_list.indexOf(cate))">
						<span>{{cate.cate_name}}</span>
					</li>
				</ul>
			</div>
			<!--右边-->
			<div class="list-wrap-right" @scroll="scrollMe($event)" ref="pppp">
				<div :class="'right-img  list_right'" v-for="cate in cate_list" >
					<img src="https://i8.mifile.cn/v1/a1/efdcf401-f553-aef7-1751-43854b6f4a20!500x200.webp?bg=7F97B1">
					<div name="m1" class="category_title"><span>{{cate.cate_name}}</span></div>
					<div class="box">
						<div class="product"   v-for="goods in cate.goods_list">
							<router-link :to="'/goods/'+goods.id">
							<div class="img"><img class="big lazy" :src="goods.goods_thumb" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"></div>
							<div class="name">{{goods.goods_name}}</div>
							</router-link>
						</div>
					</div>
				</div>
				<div class="footer"></div>
			</div>
		</div>
	</div>
</template>
<script type="es6">

    export default {
        data(){
            return {
                cur_left:0,
                cate_list:[],
                cur_index:0, //当前显示的楼层位置
                cate_floor_y_pos : [] ,//对应分类的y轴[0,1999,2999]
            }
        },
        methods:{
            init:function () {
                this.$http.get('/home/cate')
                    .then((rtnData)=>{
                        this.cate_list = rtnData.data;
                    }).then((t)=>{
						let cate_floor = this.$refs.pppp.children;
						for (var i=0;i<cate_floor.length;i++){
                            this.cate_floor_y_pos.push(cate_floor[i].offsetTop);
						}
				});
            },
            scrollMe:function (event) {
                let cur_scroll_y = event.target.scrollTop;
                if (cur_scroll_y >= this.cate_floor_y_pos[this.cur_index+1]-40) {
                    this.cur_index ++
                }else if(cur_scroll_y < this.cate_floor_y_pos[this.cur_index]-100){
                    this.cur_index --
				}
				if (cur_scroll_y >7500){
				 this.cur_left=1
				 }else {
				 this.cur_left=0
				 }
            },
            active:function (v) {
                this.cur_index=v;
				 var list_wrap_right=document.querySelectorAll(".list-wrap-right");
                 list_wrap_right[0].scrollTop=this.cate_floor_y_pos[v];
            }
        },
        mounted(){
            // dom操作都是在mounted生命周期
            this.init()
        }

    }
</script>
<style>
	*{
		margin: 0;
		padding: 0;
		list-style: none;
	}
	a{
		color: #333333;
	}
	html,body{
		height: 100vh;
		overflow: hidden;
	}
	.cate{
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	.cate .header {
		display: -webkit-box;
		height: 44px;
		padding: 0 5px;
		background: #f2f2f2;
		position: relative;
		border-bottom: 1px solid #eee;
		z-index: 2;
	}
	.cate .header>div{
		height: 45px;
	}
	.cate .header .tit h2 {
		text-align: center;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		line-height: 45px;
		color: #666;
		font-weight: 400;
		font-size: 16px;
	}
	.header .left {
		position: relative;
		z-index: 1;
		margin: 10px 0;
	}
	.header .left a {
		display: block;
		color: #333333;
	}
	.header .left .ib {
		width: 25px;
		height: 25px;
	}
	.list-wrap{
		width: 100%;
		position: relative;
		height: auto;
		overflow: hidden;
	}
	.list-wrap-left{
		width: 20%;
		position: relative;
		float: left;
		height: 630px;
	}
	.list-wrap-left>ul{
		z-index: 90;
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: -15px;
		width: 100%;
		padding: 10px 15px 10px 0;
		background: #fefefe;
		overflow: hidden;
		height: 630px;

	}
	.list-wrap-left>ul li {
		font-size: 15px;
		height: 7vh;
		overflow: hidden;
		width: 100%;
		line-height: 7vh;
		text-align: center;
	}
	.list-wrap-left>ul .active{
		color: #fb7d34;
		font-size: 18px;
	}
	.list-wrap-right{
		width: 70%;
		float: right;
		padding-right: 10%;
		margin-right: -5%;
		overflow: hidden;
		overflow-y: scroll;
		height: 100vh;
	}
	.list-wrap-right .right-img,.img{
		width: 100%;

	}
	.list-wrap-right .right-img>img,.img>img{
		width: 100%;
	}
	.list-wrap-right .category_title {
		background: #fff;
		font-size: 14px;
		text-align: center;
		font-weight: 400;
		margin-top: 10px;
		height: 64px;
		line-height:64px;
		overflow: hidden;
		width: 100%;
	}
	.list-wrap-right .category_title>span{
		position: relative;
	}
	.list-wrap-right .category_title span::before,.list-wrap-right .category_title span::after {
		content: "";
		position: absolute;
		top: 50%;
		left: 0;
		width: 20px;
		border-top: 1px solid #e0e0e0;
		transform: translate3d(-150%,-50%,0);
		-webkit-transform: translate3d(-150%,-50%,0);
	}
	.list-wrap-right .category_title span::after {
		left: 70px;
	}
	.box{
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	.box .product{
		text-align: center;
		width: 33%;
		float: left;
		margin: 10px 0 15px;
	}
	.box .product .img{
		width: 70%;
		margin: 0 15%;
	}
	.box .product .img>img{
		width: 100%;
	}
	.box .product .name{
		width: 100%;
		text-align: center;
		margin-top: 20px;
		color: rgba(0,0,0,.54);
		font-size: 12px;
	}
	.list_left_f{
		position: absolute;
		left: 0;
		top: -14vh;
	}
	.list-wrap-right .footer{
		width: 100%;
		height: 500px;
	}
</style>