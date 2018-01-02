<template>
	<div>
		<div class='product_view'>
		    <img class="left" src="src/assets/images/left.png" alt="">
			<img src="https://i8.mifile.cn/v1/a1/71cf050c-d746-9c4d-71d0-b0893f56e3b5.webp" alt="">
			<img class="share" src="src/assets/images/share.png" alt="">
		</div>
		<div class="title_view">
			<div class="product_name">
				小米6
			</div>
			<div class="product_desc">
				<font color="#ff4a00">【新品在售】</font>
				骁龙835 旗舰处理器 / 变焦双摄，4 轴防抖 / 5.15" 护眼屏 / 四曲面玻璃机身
			</div>
			<div class="price_box">
				<div class="price">
					￥2299
				</div>
			</div>
		</div>
		<div class="ui_line">
			
		</div>
		<div class="has_choose"  @click="add_cart()">
		    <div class="product_haschoose">已选</div>
		    <div class="productInfo_list">
		       <div class="productInfo">小米6 4GB+64GB 亮黑色 x1<strong>></strong></div>
		    </div>
		</div>
		<div class="has_choose">
		    <div class="product_haschoose">送至</div>
		    <div class="productInfo_list">
		       <div class="productInfo">广州市 天河区 广技师 <span>有现货</span><strong>></strong></div>
		    </div> 
		</div>
		<div class="seven_day">
			<img src="https://m.mi.com/views/product/view/img/icon_dui_b333f13.png" alt=""><p>支持7天无理由退货</p>
		</div>
		<div class="ui_line">
			
		</div>
		<div class="user_evaluation">
			<div class="evaluation_head">
				<div class="left">
					<router-link to="/comment">用户评价（2223） </router-link>
				</div>
				<div class="right">
					96.3% <span>满意</span>
				</div>
			</div>
			<div class="user">
				<div class="img">
					<img src="//s1.mi-img.com/mfsv2/avatar/fdsc3/p01iuDCvdlu2/pFWbNwnnRLH7IL_90.jpg">
				</div>
				<div class="name">
					<span>小u多多</span>
				</div>
				<div class="zan">
					<span>超爱</span>
				</div>
			</div>
			<div class="textbook">
				小米这手机有毒，老子用了后把把吃鸡
			</div>
			<div class="photo">
			<img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c45c8c81e61f27c387014c62be6a67f9.webp">
			<img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f6d948fb6c17db52edd11d243d8e695e.webp">
			<img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/d4e58b30ad36ab5994edb529b14718eb.webp">
			</div>
			<div class="reply">
				<div class="textbook">
					<span><font>官方回复：</font>别以为自己是个米粉我就不敢回复你，我还要砍你</span>
				</div>
			</div>
		</div>
		<div class="ui_line">
		
		</div>
		<div class="fouritem">
			<ul>
				<li>概述</li>
				<li>摄影作品</li>
				<li>参数</li>
				<li>意外险</li>
			</ul>
		</div>
		<img src="src/assets/images/xiaomi3.jpg" alt="">
		<img src="src/assets/images/7year.jpg" alt="">
		<img src="src/assets/images/padphoto.jpg" alt="">
		<a class="showAllBtn">查看全部图文详情 &gt;</a>
		<div class="ui_line">
			
		</div>
		<div class="recommendtitle">为你推荐</div>
<div class="recommendlist">
		<ul>
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
		<div class="clear_float">
		</div>

		<div class="Cartfoot_menu_box" v-if="Cartfoot==true">
			<router-link to="/index" active-class="Cartfoot_active-menu">首页</router-link>
			<router-link to="/cart" active-class="Cartfoot_active-menu">购物车</router-link>
			<input type="button" value="加入购物车" class="add_cart_button" @click="add_cart()">
		</div>
		<div class="Cartfoot_menu_box" v-if="Cartfoot==false">
			<input type="button" value="确定" class="add_cart_button" @click="addCart()" style="width: 100%;">
		</div>


		<div class="Cart_list Cart_list_on">
			<div class="clo" @click="mark()">x</div>
			<div class="productImg">
				<img src="https://i8.mifile.cn/v1/a1/6effe957-c52b-ef40-fe2e-3a0710d36cd5!720x7200.jpg" alt="">
			</div>
			<div class="productTitle">
				<div class="price">2299</div>
				<div class="desc">小米6 4GB+64GB 亮黑色</div>
			</div>
			<div class="maxH5">
				<div class="specTitle">版本<span style="display: none;">&nbsp;&nbsp; 请选择版本</span></div>
				<ul>
					<li class="cur">
						<div class="left">
							<p>全网通版 4GB+64GB</p>
						</div>
						<p class="right">2299元</p>
					</li>
					<li>
						<div class="left">
							<p>全网通版 4GB+64GB</p>
						</div>
						<p class="right">2299元</p>
					</li>
					<li>
						<div class="left">
							<p>全网通版 4GB+64GB</p>
						</div>
						<p class="right">2299元</p>
					</li>
					<li>
						<div class="left">
							<p>全网通版 4GB+64GB</p>
						</div>
						<p class="right">2299元</p>
					</li>
				</ul>
				<div class="specTitle">颜色<span style="display: none;">&nbsp;&nbsp; 请选择版本</span></div>
				<div class="specs">
					<div class="specItem on"><p>亮蓝色</p></div>
					<div class="specItem"><p>亮黑色</p></div>
					<div class="specItem"><p>亮白色</p></div>
				</div>
				<div class="specBuy">
					<div class="specTitle">购买数量</div>
					<div class="addNum">
						<div class="sub">
							<div class="input-sub off">-</div>
						</div>
						<div class="input-num">1</div>
						<div class="add">
							<div class="input-add">+</div>
						</div>
					</div>
				</div>
				<div class="specBb">
					<div class="specTitle">意外保险<span class="black">（可多选）</span></div>
					<div class="specItem"><p>手机意外保险&nbsp;&nbsp;249元</p></div>
				</div>
			</div>
		</div>
		<div class="mark" @click="mark()">

		</div>
	</div>

</template>
<script type="es6">
	export default {
        data(){
            return {
                Cartfoot:true,
                user_info:[],
            }
        },
        methods:{
            init:function () {
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                })
            },
            mark:function () {
				document.querySelector(".mark").style.display="none";
                document.querySelector(".Cart_list").style.bottom="-100vh";
				this.Cartfoot=true;
            },
            add_cart:function () {
                document.querySelector(".mark").style.display="block";
                document.querySelector(".Cart_list").style.bottom=0;
                this.Cartfoot=false;
            },
            addCart:function(){
                this.$http.get('/cart/add',{
                    params:{
                        info:{
                            goods_name:'小米6X',
                            id:2,
                            goods_price:'1999',
						},
                        buy_num:1,
						uid:this.user_info.id,
                    }
                }).then((rtnData)=>{
                    console.log(rtnData.data);
                })
			}

		},
        mounted(){
            // dom操作都是在mounted生命周期
            this.init()
        }
	}
</script>
<style lang='scss'>
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
	.product_view{
		display:block;
		position:relative;
		.left{
			width: 30px;
			position:absolute;
			left:10px;
			top:10px;
		}
		.share{
			width: 30px;
			position:absolute;
			right:10px;
			top:10px;
		}
	}
	.title_view{
		padding: 10px 10px 0;
        text-align: left;
        .product_name{
        	font-size:20px;
            line-height: 32px;
            color:rgba(0,0,0,.87);
            }
        .product_desc{
            margin-top: 5px;
            font-size: 16px;
            color: rgba(0,0,0,.54);
            line-height: 20px;
        }
        .price_box{
        	padding: 10px 0;
        	.price{
              position: relative;
              display: inline-block;
              margin-left: 5px;
              font-size: 20px;
              color: #f56600;
        	}
        }
	}
	.ui_line{
		    border-bottom: 8px solid #efeff0;
	}
	.has_choose{
		border-bottom: 1px solid #f4f4f4;
		span{
			font-size:14px;
			color:#ff6700;
		}
		strong{
			color:#ccc;
			float:right;
			line-height:30px;
		}
		height: 30px;
		line-height:30px;
	   padding: 5px 10px;
       text-align: left;
       .product_haschoose{
       	    font-size: 16px;
            color: rgba(0,0,0,.54);
            float:left;
       }
       .product_Infolist{
       	float:left;
       	webkit-box-flex: 1;
       }
	}
	.productInfo{
		  margin-left: 50px;
          font-size: 16px;
          color: rgba(0,0,0,.87);
          line-height:30px;
          padding-right: 10px;
       	}
       	.clear_float{
       		width: 100%;
       		height: 20px;
       	}
    .seven_day{
    height: 30px;
    padding: 0 .10px;
    line-height: 30px;
    img{
    	float:left;
    	width: 16px;
    	margin-top:7px;
    	margin-left:40px;
    }
    p{
    	float:left;
    	font-size:14px;
    	margin-left:5px;
    }
    }
    .user_evaluation{
    	    padding: 0 10px 10px;
            text-align: left;
            border-bottom: 2px solid #efeff0;
            .evaluation_head{
                   position: relative;
                   padding: 10px 0;
                   border-bottom: 1px solid #f4f4f4;
                   overflow:hidden;
                   .left{
                   	float:left;
                   	font-size:14px
                   }
                   .right{
                   	float:right;
                   	font-size:14px;
                   	color:#ff6700;
                   	span{
                   		color:black;
                   	}
                   }
            }
            .user{
            	overflow:hidden;
            	img{
            		width: 10%;
            		border-radius:50%;
            		margin-top:12px;
            		float:left;
            	}
            	.name{
            		float:left;
            		margin-top:19px;
            		margin-left:10px;
            	}
            	.zan{
            		margin-top:19px;
            		float:right;
            		color:#ff6700;
            		background: url(/src/assets/images/love.png) no-repeat;
            		background-size:20px 20px;
            		text-align:right;
            		padding:0px 25px;
            	}
            }
    }
    .textbook{
    	font{
    		color:#ff6700;
    	}
    	margin-top:15px;
    	margin-bottom:10px;
    }
    .photo{
    	img{
    		width: 20%;
    		height: 53px;
    	}
    }
    .reply{
    	padding: 10px;
    line-height: 25px;
    font-size: 14px;
    color: rgba(0,0,0,.86);
    background: #f6f6f6;
    }
    .fouritem{
    	height: 36px;
    	line-height:36px;
    	overflow:hidden;
    	padding: 10px 0;
    	background:white;
    	li{
    		float:left;
    		width: 24.7%;
    		border-right:1px solid #eee;
    		text-align:center;
    		font-size:14px;
    		height: 30px;
    	}
    }
    .showAllBtn{
    display: block;
    height: 30px;
    text-align: center;
    line-height: 20px;
    font-size: .24rem;
    color: #f56600;
    padding-top: 10px;
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
</style>
<style lang="scss">
	.Cart_list{
		transition: all 0.5s ease;
		background-color: #fff;
		width: 100%;
		height: auto;
		position: fixed;
		left: 0;
		bottom: -100vh;
		z-index: 99;
		margin-bottom: 50px;
		.clo{
			position: absolute;
			right: 20px;
			top: 10px;
			font-size:30px;
			color: rgba(0,0,0,0.3);
		}
		.productImg{
			position: absolute;
			top: -2rem;
			left: 5%;
			width: 30%;
			height: auto;
			img{  width: 100%;}
		}
		.productTitle{

			padding-top: 30px;
			padding-bottom: 20px;
			.price {
				position: relative;
				display: inline-block;
				width: 40%;
				margin-left: 40%;
				font-size: 24px;
				color: #f56600;
			}
			.price::before {
				position: absolute;
				top: 0;
				left: -10%;
				content: '￥';
				font-size: 20px;
			}
			.desc {

				 width: 45%;
				 margin-left: 35%;
				 font-size: 14px;
				 color: rgba(0,0,0,.87);
				 line-height: 20px;
			 }
		}
		.maxH5{
			width: 90%;
			margin: 0 auto;
			border-top:2px solid #F4F4F4;
			overflow-y: scroll;
			max-height: 300px;
			.specTitle{
				position: relative;
				margin-top: 16px;
				margin-bottom: 8px;
				line-height: 12px;
				font-size: 12px;
				color: #333;
			}
			ul{
				width: 90%;
				height: auto;
				padding-bottom: 20px;
				border-bottom: 1px solid #999999;
				li{
					width: 90%;
					border:1px solid #999999;
					color: #333333;
					padding: 12px 16px;
					overflow: hidden;
					margin: 10px 0;
					.left{
						float: left;
					}
					.right{
						float: right;
					}
				}
				li.cur{
					border:1px solid #f56600;
					color: #f56600;
				}
			}
			.specs{
				width: 90%;
				height: auto;
				overflow: hidden;
				padding: 10px 0 30px;
				border-bottom: 1px solid #999999;
				margin-bottom: 10px;
				.specItem{
					border:1px solid #999999;
					color: #333333;
					float: left;
					width: 20%;
					margin: 0 5%;
					text-align: center;
					height: 40px;
					line-height: 40px;
				}
				.on{
					border:1px solid #f56600;
					color: #f56600;
				}
			}
			.specBuy{
				width: 90%;
				padding: 16px 0;
				overflow: hidden;
				border-bottom: 1px solid #999999;
				.specTitle{
					float: left;
				}
				.addNum{
					float: right;
					>div{  float: left;
						width: 32px;
						height: 30px;
						line-height: 32px;
						text-align: center;
						border: 1px solid #999999;
					}
					.input-num{
						border-left:none;
						border-right:none;
					}
					.sub,.add{
						font-size: 26px;
					}
					.sub{
						color: rgba(0,0,0,0.2);
					}
				}
			}
			.specBb{
				width: 90%;
				overflow: hidden;
				border-bottom: 1px solid #999999;
				padding-bottom: 20px;
				margin-bottom: 30px;
				.specTitle{
					position: relative;
					margin-top: 16px;
					margin-bottom: 8px;
					line-height: 12px;
					font-size: 12px;
					color: rgba(0,0,0,.87);
				}
				.specItem{
					height: 36px;
					line-height: 36px;
					min-width: 70px;
					width: 50%;
					margin-top: 20px;
					box-sizing: border-box;
					padding: 0 5px;
					text-align: center;
					border: 1px solid rgba(0,0,0,.15);
					font-size: 12px;
				}
			}
		}
	}
	.mark{
		background-color: rgba(0,0,0,0.8);
		position: fixed;
		left: 0;
		top: 0;
		width: 100%;
		height: 100vh;
		display: none;
	}
</style>