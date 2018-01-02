<template>
	<div>
		<div class="top">
			<img src="../assets/images/mylogo.png" alt="">
			<div v-if="user_status==0">
				<router-link to="/login"> 登录/ </router-link>
				<router-link to="/reg" > 注册 </router-link>
			</div>
			<div v-if="user_status==1">
				<a >{{user_info.user_name}}&nbsp;&nbsp;&nbsp;&nbsp;</a>
				<a  @click="logout()">退出登录</a>
			</div>
          <router-view/>
		</div>
		<div class="my_order">
			<h4>我的订单</h4>
			<p class="jt"></p>
			<a>全部订单</a>
		</div>
		<div class="order_info">
			<ul>
				<li><img src="src/assets/images/order1.png" alt=""><p>待付款</p></li>
				<li><img src="src/assets/images/order2.png" alt=""><p>待收货</p></li>
				<li><img src="src/assets/images/order3.png" alt=""><p>待退换</p></li>
			</ul>
		</div>
		<div class="item">
			<ul>
				<li><img src="../assets/images/item1.png" alt=""><a href="">会员福利</a><p class="jt"></p></li>
				<li style="border-top: 1px solid rgba(0,0,0,.15);width: 100%;float:right;"><img src="../assets/images/item2.png" alt=""><a href="" style="margin-bottom: 10px">我的优惠</a><p class="jt"></p></li>
			</ul>
			<ul>
				<li><img src="../assets/images/item3.png" alt=""><a href="">服务中心</a><p class="jt"></p></li>
				<li style="border-top: 1px solid rgba(0,0,0,.15)"><img src="../assets/images/item4.png" alt=""><a href="">小米之家</a><p class="jt"></p></li>
			</ul>
			<ul>
				<li><img src="../assets/images/item5.png" alt=""><a href="">F码通道</a><p class="jt"></p></li>
			</ul>
			<ul>
				<li><img src="../assets/images/item6.png" alt=""><router-link to="/site">设置</router-link><p class="jt"></p></li>
			</ul>
		</div>
	</div>
</template>
<script type="es6">
import {mapState} from 'vuex'
	export default {
        data(){
            return {
                user_info:"",
            }
        },
		computed:{
			...mapState(['user_status'])
		},
        methods:{
            init:function () {
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                })
            },
            logout:function () {
				localStorage.removeItem('uid')
				localStorage.removeItem('user_name')
				this.$store.commit('setUserStatus',['',0])
            }
		},
        mounted(){
            // dom操作都是在mounted生命周期
            this.init()
        }
	}
</script>
<style lang="scss">
	@import url("../assets/common.scss");
	.top{
		background: url("../assets/images/logobg.png") center 0 #f37d0f;;
		overflow: hidden;
		padding: 15px 0;
		img{
			float: left;
			width: 15%;
			margin: 0 2% 0 5%;
		}
		a{
			float: left;
			margin-top: 15px;
			color: #fff;
			font-size: .24rem;
		}
	}
	.my_order{
		padding: 10px 5px;
		border-bottom: 1px solid rgba(0,0,0,.15);
		overflow: hidden;
		h4{
			display: inline-block;
			float: left;
			font-size: .28rem;
			padding: 0 0 0 .32rem;
			color: rgba(0,0,0,.87);
		}
		a{
			display: inline-block;
			font-size: .24rem;
			color: rgba(0,0,0,.54);
			float: right;
			margin-right: 5px;
		}
		}
	.order_info{
		padding: 10px 5px;
		ul{
			overflow:hidden;
			li{
				margin-top:12px;
				float: left;
				width: 33%;
				img{
					margin-left: 49px;
					width: 20%;
				}
				p{
					text-align: center;
					font-size: .24rem;
					color: #333;
				}
			}
		}
	}
	.item{
		background: #f5f5f5;
		margin-top: 8px;
		padding: 10px 0 50px 0;
		ul{
			overflow: hidden;
			width: 100%;
			background: #fff;
			margin-top: 17px;
			li{
				overflow: hidden;
				padding: 15px 0;
				img{
					width: 8%;
					float: left;
					padding-right: .56rem;
					padding-left: 1.12rem;
				}
				a{
					float: left;
					font-size: .28rem;
					color: rgba(0,0,0,.87);
					margin-top: 12px;
				}
				p{
					margin: 5px 10px 0 0;
				}
			}
		}
	}
</style>