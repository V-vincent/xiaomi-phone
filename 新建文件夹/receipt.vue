<template>
	<div>
		<div class="fit" v-if="order_f==0">
		 <div class="header"><router-link to="/my"><</router-link>我的订单</div>
		<ul>
			<li v-for="order in order_list">
				<div class="top">
					<div class="left">
						<img src="https://i1.mifile.cn/f/i/g/2015/cn-index/hm4x_80.png?width=80&height=80" alt="">
					</div>
					<div class="right">
						<p class="name">{{order.goods_name}}</p>
						<p class="price">￥{{order.goods_price}}</p>
						<p class="buy_num">x{{order.buy_num}}</p>
					</div>
				</div>
				<div class="item">
					<p class="status" v-if="order.spec=='false'">交易已完成</p>
					<p class="status" v-if="order.spec=='true'">卖家已发货</p>
					<p class="sum">共{{order.buy_num}}件商品</p>
					<p class="sum_p"><span>实付：</span>￥{{order.buy_num*order.goods_price}}</p>
				</div>
				<div class="bottom">
					<input type="button" :value="order.spec=='false'?'删除订单':'已收货'" @click="order_bar(order)">
					<input type="button" value="追加评论" v-if="order.spec=='false'" @click="com_i(order)">
				</div>
			</li>
		</ul>
		</div>

		<div class="fit" v-if="order_f==1">
			<div class="header"><a @click="order_box(0)"><</a>商品评论</div>
			<input type="text" v-model="comment.comment" placeholder="输入评论内容" class="comment">
			<a @click="comment_pub()" class="logout">发布评论 </a>
		</div>
	</div>
</template>
<script type="es6">
	export default {
        data(){
            return {
                user_info:[],
				order_f:0,
                comment:[],
                order_list:[],
            }
        },
        methods:{
            init:function () {
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                    var that=this;
                    this.$http.get('/order/getGoodsList',{ params:{ uid:that.user_info.id, } }).then((rtnData)=>{
                        console.log(rtnData.data);
                        that.order_list = rtnData.data;

                       // this.$http.get('/order/getAddressList',{ params:{ uid:that.user_info.id, } })

                    })
                });
            },
            //退出登录
            logout:function () {
                this.$http.get('/user/logout2').then((rtnData)=>{
                    this.user_info = '';
                    window.open("#/My","_self");
                })
            },
            order_bar:function (order) {
				if(order.spec=="true"){
                    this.$http.get('/order/completion',{ params:{ id:order.id,uid:this.user_info.id, } }).then((rtnData)=>{
                        this.order_list = rtnData.data;
                    })
                }else {
                    if(window.confirm('你确定要删除此订单吗？')){
                        this.$http.get('/order/orderDel',{ params:{ id:order.id,uid:this.user_info.id, } }).then((rtnData)=>{
                            this.order_list = rtnData.data;
                        })
					}
                }
            },
            order_box:function(a){
                this.order_f=a;
			},
			comment_pub:function(){
                this.$http.get('/order/commentPub',
					{ params:{ goods_id:this.comment.goods_id,name:this.user_info.user_name,
						comment: this.comment.comment,} }).then((rtnData)=>{
                    this.comment.comment="";
                    this.order_box(0);

                })
			},
            com_i:function(order){
                this.order_f=1;
                this.comment.goods_id=order.goods_id;
            },
		},
        mounted(){
            this.init()
        }

	}
</script>
<style lang="scss">
	.header{
		position: relative;
		text-align: center;
		background-color: #f2f2f2;
		height: 40px;
		line-height: 40px;
		a{
			position: absolute;
			left: 20px;
			top: 0;
			height: 40px;
			transform: scaleY(1.8);
			-webkit-transform:scaleY(1.8);
			color: #aaa;
		}
	}

	.logout{
		text-align: center;
		height: 40px;
		line-height: 40px;
		width: 100%;
		position: absolute;
		bottom: 0;
		color: #ffffff;
		background-color: #FF5722;
	}
	.fit{
		width: 100%;
		height: 100vh;
		position: relative;
		ul{
			width: 100%;
			li{
				width: 100%;
				border-bottom: 1px solid #ddd;
				border-top: 1px solid #ddd;
				margin-top: 10px;
				padding-top: 5vw;
				padding-bottom: 10px;
				text-indent: 15px;
				overflow: hidden;
				position: relative;
				span{
					position: absolute;
					right: 5px;
					top: 0;
					transform: scaleY(1.8);
					-webkit-transform:scaleY(1.8);
					color: #aaa;
				}
				.top{
					border-bottom: 1px solid #ddd;
					overflow: hidden;
					width: 100%;
					padding-bottom: 10px;
					.left{
						float: left;
						width: 20%;
						height: 20vw;
						img{
							width: 100%;
							height: 20vw;}
					}
					.right{
						width: 70%;
						margin-left: 5%;
						float: left;
						.name{
							width: 60%;
							height: 20vw;
							line-height: 30px;
							float: left;
						}
						.price{
							width: 35%;
							float: left;
							font-weight: 600;
							margin-left: 5%;
						}
						.buy_num{
							color: #eee;
							text-align: right;
						}


					}
				}
				.item{
					overflow: hidden;
					border-bottom: 1px solid #ddd;
					padding: 10px 0;
					.status{
						float: left;
						line-height: 30px;
						height: 30px;
						font-size: 18px;
						width: 30%;
					}
					.sum{
						height: 30px;
						line-height: 30px;
						width: 30%;
						float: left;
					}
					.sum_p{
						height: 30px;
						line-height: 30px;
						span{
							color:#eee;
							position: relative;
							left: 0;
							top: 0;
							line-height: 30px;
						}
					}
				}
				.bottom{
					padding-top: 10px;
					overflow: hidden;
					input{
						height: 40px;
						line-height: 40;
						outline: none;
						padding: 0 10px;
					}
				}
			}
		}
		.comment{
			padding: 10px;
			width: 80%;
			display: block;
			margin: 0 auto;
		}
	}
	.site_box{
		width: 100%;
		height: 100vh;
		position: relative;
		ul{
			width: 100%;
			li{
				width: 90%;
				margin: 5px auto;
				border: 1px solid #f6f6f6;
				border-radius: 5px;
			}
			p{
				height: 40px;
				line-height: 40px;
				position: relative;
				margin: 0 10px;
				border-bottom: 1px solid #f6f6f6;
				.name{
					color: #FF5722;
					padding-right: 30px;
				}
				.del{
					position: absolute;
					right: 20px;
					top: 0;
					color: #999;
				}
			}
			div{
				padding: 10px;
				position: relative;
				span{
					position: absolute;
					right: 30px;
					color: #999;
					transform: scaleY(1.8);
				}
			}
		}
		.logout{
			text-align: center;
			height: 40px;
			line-height: 40px;
			width: 100%;
			position: absolute;
			bottom: 0;
			color: #fff;
			background-color: #FF5722;
			padding: 5px 0;
		}
	}
	.siteAdd{
		height: 100vh;
		position: relative;
		ul{
			width: 100%;
			li{
				width: 90%;
				padding: 0 5%;
				border-bottom: 1px solid #f2f2f2;
				height: 50px;
				line-height: 50px;
				input{
					outline: none;
					border: none;
					text-indent: 10px;
				}
			}
		}

		.logout{
			padding: 5px 0;
			background-color: #FF5722;
			color: #ffffff;
		}
	}
</style>