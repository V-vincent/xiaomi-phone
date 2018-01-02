<template>
<div class="cart">
	<div class="cart_head">
		<a class='left' href="/index">	< </a>
		<div class='tif'>购物车</div>
		<div class='right'>
		<div class='icon icon-search'>	</div>
		</div>
	</div>
	<div v-if="cart_list==null">
		<div class="no_login">
			<p>登录后享受更多优惠</p> <a href="">去登录 ></a>
		</div>
		<div class='shopping_cart'>
			<a href=""><span>购物车还是空的</span><em>去逛逛</em></a>
		</div>
		<div class="recommendtitle">为你推荐</div>
		<div class="recommendlist">
			<ul>
				<li>
					<router-link to="/cate">
					<div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div>
					</router-link>
				</li>
				<li>
					<router-link to="/cate">
					<div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div>
					</router-link>
				</li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
				<li><div class='img'>
						<img src="src/assets/images/phone.jpg" alt="">
					</div>
					<div class='recommendinfo'>
						<div class='recommend_name'>
						红米5A 16GB
						</div>
						<div class='recommend_price'>
						￥599
						</div>
					</div></li>
			</ul>
		</div>		
	</div>
	<div v-if="cart_list" class="has_goods">
		<el-table :data="cart_list" width="100%" @selection-change="handleSelectionChange">
			<el-table-column type="expand">
				<template slot-scope="scope">
					<el-form>
						<el-form-item> 
							<el-button type="danger" @click="confirm(scope.row)">删除</el-button>
						</el-form-item>
					</el-form>
				</template>
			</el-table-column>

			<el-table-column type="selection"></el-table-column>
			<el-table-column prop="goods_name" label="商品名称"></el-table-column>
			<el-table-column label="购买数量">
				<template slot-scope="scope">
					<div class="div_number">
					<el-input-number :min="1"  v-model="scope.row.buy_num" size="mini" @change="handleChange"></el-input-number>
					</div>
				</template>
			</el-table-column>
			<el-table-column prop="goods_price" label="商品单价"></el-table-column>
		</el-table>
		<el-row style="margin-top:20px">
			<el-col :span="12" style="text-align:center">
				<span style="font-size:14px">共 <strong style="color:#ff6700">{{cart_list.length}}</strong> 件商品，已选择 <strong style="color:#ff6700">{{total_num}}</strong> 件</span>
			</el-col>
			<el-col  :span="12" style="text-align:left">
				合计： <span style="color:#ff6700">{{total_price}}</span>元
				<el-button type="primary" style="float:right;margin:5px 0" @click="toAccount()">去结算</el-button>
			</el-col>
		</el-row>
		<div class="remind_box">
			<p style="color:#ff6700">温馨提示：产品是否购买成功，以最终下单为准，请尽快结算</p>
		</div>
	</div>
</div>
</template>
<script type="es6">
import lockr from 'lockr'
	export default {
		data(){
			return  {
				cart_list : [],
				check_list:[],
				user_info:[]
			}
		},
		created(){
			this.init()
		},
		computed:{
			total_num : function () {
				let num = 0
				this.check_list.forEach((item)=>{
					num += item.buy_num
				})
				return num
			},
			total_price : function () {
				let sum_price = 0
				this.check_list.forEach((item)=>{
					sum_price += item.buy_num*item.goods_price
				})
				return sum_price
			}
		},
		methods:{
			init:function () {
				this.cart_list = lockr.get('cart_list')
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                })
			},
			handleSelectionChange:function (val) {
				this.check_list = val
			},
			toAccount:function(){
				window.open("#/account","_self");
			},
			handleChange:function(){
			},
			confirm:function (cart_info) {
				this.$confirm('确定要删掉这件商品吗？','友情提醒')
					.then(()=>{
						let cur_remove_index =this.cart_list.indexOf(cart_info)
						this.cart_list.splice(cur_remove_index,1)
						// 删除本地存储
						lockr.set("cart_list", this.cart_list);
						this.$store.commit('init')
					})
					.catch(()=>{
						console.log(1)
					})
				}	
		}
	}
</script>
<style lang="scss">
@import "../assets/common";
    .cart{
    	padding-bottom: 50px;
    }
	.cart_head{
		.tif{
			color:#666;
			margin-right:30px;
			font-size:20px;
			line-height:40px;
		}
		.left{
			float:left;
			font-size:40px;
			line-height:35px;
			color:#ccc;
		}
        height: 45px;
        padding: 0 8px;
        background: #f2f2f2;
        position: relative;
        top:0;
        border-bottom: 1px solid #eee;
        z-index: 2;
	}
	.no_login{
		height: 50px;
		line-height: 50px;
		p{
           float: left;
           margin-left: 20px;
		}
		a{
           float: right;
           margin-right:20px;
           color:#ccc;
		}
	}
	.shopping_cart{
		background:#ebebeb;
		overflow:hidden;
		a{
			    height: 40px;
			    width: 100%;
		}
		span{
			background:url(/src/assets/images/cartnull.png) no-repeat 0 center; 
			display: block;
            line-height: 25px;
            background-size: auto 100%;
            padding: 10px  2px;
            color: rgba(0,0,0,.27);
            width: 40%;
            float:left;
            margin-left:40px;
            text-align:right;
		};
		em{
			display: block;
            border: 1px solid rgba(0, 0, 0, 0.15);
            height: 30px;
            line-height:30px;
            width: 60px;
            text-align:center;
            float:left;
            margin-top:7px;
            margin-left:30px;
            color:#333;
		}
	}
	.recommendlist{
		.remommendinfo{
			padding: .18rem .27rem;
			.recommend_name{
				font-size: .28rem;
				color: rgba(0,0,0,.87);
				verflow: hidden;
			    }
			    .recommend_price{
			    	font-size: .32rem;
			    	color: #ff6000;
			    	margin-top: .1rem;
			    }
		}
		margin-bottom:50px;
		height:auto;
		width:100%;
		overflow:hidden;
		li{
			float: left;
            width: 50%;
            box-sizing: border-box;
            padding-right: .04rem;
		}
	}
	.recommend_name{
				font-size: .28rem;
				color: rgba(0,0,0,.87);
				verflow: hidden;
				margin-right:70px;
				font-size:16px;
			    }
	.recommend_price{
		color: #ff6700;
		float:left;
		margin-left:20px;
		font-weight:bold;
	}
	.recommendtitle{
		float:left;
		height: 40px;
		line-height:40px;
	}


	.has_goods{background: #fff;}
	.div_number .el-input-number{    width: 88px;}
	.el-message-box{width: 68%}
	.div_number .el-input-number__decrease, .div_number .el-input-number__increase{width: 26px;}
</style>