<template>
	<div>
		<div class="fit" v-if="site_f==0">
		 <div class="header"><router-link to="/my"><</router-link>个人设置</div>
		<ul>
			<li @click="site_box(1)">地址管理 <span>></span></li>
			<li>电脑版 <span>></span></li>
		</ul>
		<a @click="logout()" class="logout">退出登录 </a>
		</div>
	<div class="site_box" v-if="site_f==1">
		<div class="header"><a @click="site_box(0)"><</a>收货地址</div>
		<ul>
			<li v-for="address in address_list">
				<p><span class="name">{{address.name}}</span>{{address.phone}} <span class="del" @click="site_del(address)">删除</span></p>
				<div @click="mod_site(address)">{{address.site}}<span>></span></div>
			</li>
		</ul>
		<a @click="site_box(2)" class="logout">新建地址</a>
	</div>
	<div class="siteAdd"  v-if="site_f==2">
		<div class="header"><a @click="site_box(1)"><</a>新增地址</div>
		<ul>
			<li>收货人：<input type="text" placeholder="真实姓名" v-model="add_address.name"></li>
			<li>手机号码：<input type="text" placeholder="手机号" v-model="add_address.phone"></li>
			<li>详细地址：<input type="text" placeholder="详细地址" v-model="add_address.site"></li>
		</ul>
		<a @click="siteAdd()" class="logout" >保存地址 </a>
	</div>
		<div class="siteAdd"  v-if="site_f==3">
			<div class="header"><a @click="site_box(1)"><</a>修改地址</div>
			<ul>
				<li>收货人：<input type="text" placeholder="真实姓名" v-model="new_add_address.name"></li>
				<li>手机号码：<input type="text" placeholder="手机号" v-model="new_add_address.phone"></li>
				<li>详细地址：<input type="text" placeholder="详细地址" v-model="new_add_address.site"></li>
			</ul>
			<a @click="modify_pub()" class="logout">保存地址 </a>
		</div>
	</div>
</template>
<script type="es6">
	export default {
        data(){
            return {
                user_info:[],
				site_f:0,
                address_list:[],
                add_address:[],
                address_num:0,
                new_add_address:[],
            }
        },
        methods:{
            init:function () {
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                    var that=this;
                    this.$http.get('/order/getAddressList',{ params:{ uid:that.user_info.id, } }).then((rtnData)=>{
                        console.log(rtnData.data);
                        that.address_list = rtnData.data;
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

            site_box:function (f) {
                this.site_f=f;
                this.add_address=[];
            },
            mod_site:function (address) {
				this.site_box(3);
				this.new_add_address=address;
            },
			//增加地址
            siteAdd:function () {
                if(this.add_address.name==""||this.add_address.name==undefined){
                    alert("请输入姓名");
                    return;
                }else if(this.add_address.phone==""||this.add_address.phone==undefined){
                    alert("请输入电话");
                    return;
                }else if(this.add_address.site==""||this.add_address.site==undefined){
                    alert("请输入地址");
                    return;
                }
                if(this.user_info.id){
                    this.user_info.id=this.user_info.id;
                }else {
                    this.user_info.id=0;
                }
                console.log(this.add_address.name);
                var address=this.add_address;
                var that=this;
                this.$http.get('/order/add_address2',{
                    params:{
                        name:address.name,
                        phone:address.phone,
                        site:address.site,
						uid:that.user_info.id,
                    }
                }).then((rtnData)=>{
                    this.address_list=rtnData.data;
                    this.add_address=[];
                    this.site_box(1);
                })
            },
            //删除地址
            site_del:function (address) {
                if(window.confirm('你确定要删除此地址吗？')){
                    var that=this;
                    this.$http.get("/order/address_del2",{
                        params:{
                            id:address.id,
                            uid:that.user_info.id,
                        }
                    }).then((rtnData)=>{
                        this.address_list=rtnData.data;
                        this.site_box(1);
                    });
                }else{
                    return
                }
            },
			//修改地址
            modify_pub:function () {
                if(this.new_add_address.name==""){
                    alert("请输入姓名");
                    return;
                }else if(this.new_add_address.phone==""){
                    alert("请输入电话");
                    return;
                }else if(this.new_add_address.site==""){
                    alert("请输入地址");
                    return;
                }
                var address=this.new_add_address;
                var that=this;
                this.$http.get("/order/modify_address2",{
                    params:{
                        name:address.name,
                        phone:address.phone,
                        site:address.site,
                        id:address.id,
                        uid:that.user_info.id,
                    }
                }).then((rtnData)=>{
                    this.address_list=rtnData.data;
                    this.site_box(1);
                });
            }
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
		background-color: #aaa;
	}
	.fit{
		width: 100%;
		height: 100vh;
		position: relative;
		ul{
			width: 100%;
			li{
				width: 100%;
				height: 40px;
				line-height: 40px;
				border-bottom: 1px solid #ddd;
				text-indent: 15px;
				position: relative;
				span{
					position: absolute;
					right: 5px;
					top: 0;
					transform: scaleY(1.8);
					-webkit-transform:scaleY(1.8);
					color: #aaa;
				}
			}
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