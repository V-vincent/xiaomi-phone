<template>
	<div class="comment">
		 <div class="header"><router-link to="/goodsInfo"><</router-link>商品评论</div>
		<div class="comment-header"><div><span>96.7</span><em>%满意</em></div></div>
		<div class="cate"><span class="cur">最热门</span><p>|</p><span>最新</span></div>
		<ul class="comment_box">
			<li class="item" v-for="comment in comment_list" v-if="comment_list.indexOf(comment)<=comment_num">
				<div class="item_header">
					<div class="img">
						<img :src="comment.u_img">
					</div>
					<div class="name">
						<span>{{comment.u_name}}</span>
						<span class="date">{{comment.time}}</span>
					</div>
					<div class="zan">超爱</div>
				</div>
				<div class="textbox">{{comment.comment}}</div>
				<div class="photos p2">
					<img class="lazy" :src="comment.img_1" @click="bigImg(comment.img_1)">
					<img class="lazy" :src="comment.img_2" @click="bigImg(comment.img_2)">
					<img class="lazy" :src="comment.img_3" @click="bigImg(comment.img_3)">
				</div>
				<div class="reply">
					<div class="avatar">
						<img src="https://m.mi.com/component/comment/images/mi-logo_518eb70.png" alt="">
						<span class="tit">官方回复：</span>{{comment.reply}}
					</div>
				</div>
			</li>
		</ul>
        <div class="bigImg" style="display: none;">
            <img :src="img_src">
        </div>
	</div>
</template>
<script type="es6">
	export default {
	    data(){
            return {
                big_img: false,
				img_src:"",
				user_info:[],
				comment_list:[],
                comment_num:5,
        	}
		},
        methods:{
	        init:function () {

                var that=this;
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                        this.user_info = rtnData.data;
                        var that=this;
                        this.$http.get('/goods/getCommentList',{ params:{ good_id:1, } }).then((rtnData)=>{
                            that.comment_list = rtnData.data;
                        })
                });
                document.querySelector(".bigImg").onclick=function () {
                    this.style.display="none";
                }
                window.onscroll=function () {
                    var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;
                    var scrollHeight=document.documentElement.scrollHeight||document.body.scrollHeight;
                    var clientHeight=document.documentElement.clientHeight||document.body.clientHeight;
                    if(scrollTop>=scrollHeight-clientHeight-50){
                        that.comment_num++;
                        that.init();
                    }
                }
            },
            imgH:function () {
                document.querySelector(".bigImg").style.display="block";
            },
            bigImg:function (src) {
                this.big_img=true;
                this.img_src=src;
                this.imgH();
            }
		},
        mounted(){
            this.init()
        }
	}
</script>
<style lang="scss">
	.comment{
		width: 100%;
		.header{
			width: 100%;
			height: 40px;
			line-height: 40px;
			text-align: center;
			position: relative;
			background-color: #f2f2f2;
			a{
				position: absolute;
				left: 20px;
				top: 0;
				transform: scaleY(1.8);
				color: #ccc;
			}
		}
		.comment-header{
			width: 100%;
			background: #F37D0F;
			color: #fff;
			height: 90px;
			text-align: center;
			line-height: 90px;
			font-size: 36px;
			em{
				font-size: 18px;
			}
		}
		.cate{
			width: 100%;
			height: 40px;
			line-height: 40px;
			background-color: #f2f2f2;
			color: #AFAFAF;
			.cur{
				color: #F37D0F ;
			}
			span{
				width: 20%;
				float: left;
				text-align: center;
			}
			p{
				width: 5%;
				float: left;
				text-align: center;
			}
		}
		.comment_box{
			width: 100%;
			overflow: hidden;
			.item{
				width: 90%;
				padding: 2vh 5%;
				border-bottom: 1px solid #ddd;
				overflow: hidden;
				.item_header{
					width: 100%;
					overflow: hidden;
					.img{
						width: 15%;
						float: left;
						img{
							width: 100%;
							border-radius: 50%;
						}
					}
					.name{
						width: 65%;
						float: left;
						span{
							display: block;
							width: 100%;
							height: 6vw;
							line-height: 6vw;
							text-indent: 15px;
						}
						.date{
							font-size: 12px;
							color: rgba(0,0,0,.4);
						}
					}
					.zan{
						width: 20%;
						float: left;
						text-align: center;
						height: 12vw;
						line-height: 12vw;
						color: #FF5722;
					}
				}
				.textbox{
					color: #333333;
					height: 48px;
					line-height: 24px;
					font-size: 14px;
					padding: 5px 0;
				}
				.photos{
					width: 100%;
					height: 30vw;
					overflow: hidden;
					img{
						width: 30%;
						float: left;
						margin-right: 5px;
					}
				}
				.reply{
					width: 90%;
					color: #333;
					background: #f6f6f6;
					padding: 10px 5%;
					margin-top: 10px;
					.avatar{
						position: relative;
						text-indent: 25px;
						font-size: 14px;
						color: #333333;
						img{
							position: absolute;
							width: 20px;
							left: 0;
							top: 0;
						}
						.tit{
							color: #FF5722;
						}
					}
				}
			}
		}
		.bigImg{
			width: 100%;
			height: 100vh;
			background-color: #000;
			position: fixed;
			left: 0;
			top: 0;
            z-index: 999;
            line-height: 100vh;
			img{
                display: inline;
				width: 100%;
			}
		}
	}
</style>