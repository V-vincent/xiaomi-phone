<template>
	<div class="reg">
		<div class="reg_header">
		 	<img src="../assets/images/logo.png" height="56" width="56" alt="">
		 	<h4 class="title">小米帐号注册</h4>
		 </div>
		 <div class="form_list">
		 <el-form :model="ruleForm"  :rules="rules" ref="ruleForm">

			<el-form-item  prop="username">
				<el-input  placeholder="请输入要注册的账号" v-model="ruleForm.username"></el-input>
			</el-form-item>
			<el-form-item  prop="userpwd">
				<el-input  type="password" placeholder="请输入密码" v-model="ruleForm.userpwd"></el-input>
			</el-form-item>
			<el-form-item  prop="repwd">
				<el-input  type="password" placeholder="请再次输入密码" v-model="ruleForm.repwd"></el-input>
			</el-form-item>
		</el-form>
		  	<div class="btn_box">
		  		<input type="button" value="立即注册" class="one_btn btn" :disabled="this.ruleForm.user_name=='' || this.ruleForm.user_pwd=='' || this.ruleForm.repwd==''" @click="doReg()">
		  		<a class="two_btn btn" href="..#/my">用户名/手机登录</a>

		  	</div>				  		
		 </div>
		 <div class="foot_box">
		 	<ul>
		 		<li class="frist"><a>简体</a></li>
		 		<li><a>繁体</a></li>
		 		<li><a>English</a></li>
		 		<li><a>常见问题</a></li>
		 	</ul>
		 </div>
	</div>
</template>
<script type="es6">
import { Toast } from 'mint-ui';
import qs from 'qs'
	export default {
		data(){
			var checkPwd = (rule, value, callback) =>{
				// 检验密码一样不？
				if (value != this.ruleForm.userpwd) {
					callback(new Error('两个密码不一致！'))
				}else{
					callback()
				}
			};
			return {
				ruleForm:{
					username:'',
					userpwd:'',
					repwd:'',
				},
				rules:{
					username:[
						{required:true,message:"用户名不能为空！"},
						{min:3,max:12,message:"账号在3到12位之间"}
					],
					userpwd:[
						{required:true,message:"密码不能为空！"},
						{min:3,max:12,message:"密码在3到12位之间"}
					],
					repwd:[
						{validator:checkPwd}
					],
				}
			}
		},
		methods:{
			doReg:function () {
				this.$refs.ruleForm.validate((result)=>{
					if (result == true) {
						this.$http.post('/user/doreg',{
							user:this.ruleForm.username,
							password:this.ruleForm.userpwd,
						}).then((rtnData)=>{
							Toast("注册成功")
							console.log(rtnData)
						})
					}
				})		
			}
		}

	}
</script>
<style lang="scss">
	.reg{
		width: 100%;
		height: 100vh;
		background: #eee;
		color: #666;
	}
	.reg_header{
		padding: 40px 0 22px;
		text-align: center;
	}
	.reg_header img{
		width: 49px;
    	height: 48px;
    	margin: 0 auto 22px;
	}
	.reg_header .title{
		font-size: 22px;
    	color: #424242;
    	font-weight: normal;
	}
	.form_list{
		padding: 0 20px;
		overflow: hidden;
	}
	.input_box{
		width: 100%;
		height: 90px;
		border-radius: 8px;
		margin: 20px auto;
		background: #fff;
	}
	.input_box .input_num{
		width: 100%;
		height: 50%;
		height: 45px;
		line-height: 45px;		
		border-bottom: 1px solid #e0e0e0;
		overflow: hidden;
	}
	.input_box .input_num span{
		width:15%; 
		padding: 11px;
		box-sizing: border-box;
    	color: #333;
    	display: block;
    	float: left;
   		border-right: 1px solid #e0e0e0;
	}
	.input_box .input_num input{
		width: 100%;
		float: left;
		border:none;
		height: 45px;
		line-height: 45px;
		padding-left: 20px;
		border-radius: 8px;
		box-sizing: border-box;
		font-size: 18px;
	}
	.input_box .input_num .verify{
		width: 70%;
		border-right: 1px solid #e0e0e0;
	}
	.input_box .input_num a{
		width:29%; 
		text-align: center;
		display: block;
		float: left;
	}
	.btn_box .btn{
		width: 100%;
    	display: block;
    	margin-bottom: 14px;
    	text-align: center;
    	font-size: 16px;
    	height: 42px;
    	line-height: 42px;
    	background: #33b4ff;
    	color: #fff;
    	cursor: pointer;
    	border-radius: 25px;
    	border: 1px solid rgba(186,186,186,0.3);
	}
	.btn_box .two_btn{
		background: #fff;
		color: #333;
		margin-top: 10px;
	}
	.form_list .other span{
		float: left;
		display: block;
		border-bottom: 1px dashed #ccc;
		margin-top: 10px;
		width: 35%;
	}
	.form_list .other p{
		float: left;
		width: 30%;
		text-align: center;
	}
	.other_box{
		width: 60%;
		margin: 70px auto;
		overflow: hidden;
	}
	.other_box a{
		display: block;
		float: left;
		width: 45px;
		height: 45px;
		background: #fff;
		border-radius: 25px;
		margin-left: 20px;
	}
	.foot_box{
		margin-top: 50px;
		color: #757575;
    	text-align: center;
	}
	.foot_box ul{
		width: 70%;
		margin: auto;
	}
	.foot_box ul li{
		width: 20%;
		float: left;
		border-left: 1px solid #ccc;
	}
	.foot_box ul li.frist{border-left:0;}
	.foot_box ul li a{font-size: 14px;}
</style>
</style>