<template>
	<div class="account_box">
		<div class="header_box">
			<mt-header title="用户结算" class="header">
  				<mt-button  icon="back" slot="left" @click="returnCart()"></mt-button>
			</mt-header>
		</div>
		<div class="address_box">
			<mt-cell title="你的名字 18888****88" label="广东 广州市 天河区 车陂  (510630)" is-link></mt-cell>
		</div>
		<div class="pay_box">
    		<mt-radio  v-model="value" align="right" :options="pay_list"></mt-radio>
			<mt-header title="收起其他支付方式" class="pay_way"></mt-header>    		
		</div>
		<div class="other_box">
			<mt-cell title="快递配送（运费 100 元）" value="不限送货时间" is-link></mt-cell>
			<mt-cell title="电子发票"  value="个人" is-link></mt-cell>
			<mt-cell title="优惠券" is-link></mt-cell>
		</div>
		<div class="goods_box">
			<el-table :data="cart_list" width="100%">
				<el-table-column prop="goods_name" label="商品名称"></el-table-column>
				<el-table-column prop="id" label="购买数量"></el-table-column>
				<el-table-column prop="goods_price" label="商品单价"></el-table-column>
			</el-table>		
		</div>
		<div class="sum_box">
			<mt-cell title="商品价格：1799.00" label="配送费用： 0.00"></mt-cell>	
		</div>
		<div class="foot_box">
			<mt-header fixed title="去付款" class="foot_fixed"></mt-header>
		</div>
	</div>
</template>
<script type="es6">
import lockr from 'lockr'
	export default {
		data(){
			return  {
				cart_list : [],
				pay_list: ['微信支付 推荐使用 更安全便捷','支付宝 支付订单，赢1999元红包', 
    		 			'小米钱包 绑新卡支付，享最高立减99元','银联在线支付','翼支付',
    		 			'花呗分期','小米分期']
			}
		},
		created(){
			this.init()
		},
		methods:{
			init:function () {
				this.cart_list = lockr.get('cart_list');
			},
			returnCart:function(){
				window.open("#/Cart","_self");
			}		
		}		
	}
</script>
<style lang="scss">
@import "../assets/common";
.account_box{
	padding-bottom: 80px;
	background:  #f2f2f2;
}
.header{
	background-color: #f2f2f2;
	color: #333;
	font-size: 20px;
}
.address_box{
	background: #FFF url("../assets/images/bd1.png") 0 0 repeat-x;
    -webkit-background-size: .68rem .32rem;
    -moz-background-size: .68rem .32rem;
    -ms-background-size: .68rem .32rem;
    -o-background-size: .68rem .32rem;
    background-size: .68rem .32rem;
    padding-top: .3rem;
    position: relative;
    margin-bottom: 15px;
    >a{
    	border:none;
    }
}
.pay_box,.other_box,.goods_box,.sum_box{
  margin-bottom: 15px;
}
.pay_way{
	background-color: #fff;
	color: #bdbdbd;
	font-size: 14px;	
}
.foot_box .foot_fixed{
	bottom: 0;
	top: 94vh;
	z-index: 100;
}
</style>