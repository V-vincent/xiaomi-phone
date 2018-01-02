<template>
	<div class="login">
		 <div class="login_header">
		 	<img src="../assets/images/logo.png" height="56" width="56" alt="">
		 	<h4 class="title">小米帐号登录</h4>
		 </div>
		<div v-if="userlogin==false" class="form_list">
		<el-form :model="ruleForm2" :rules='rules2' ref="ruleForm2">
		  	<el-form-item  prop="phone_num">
		  			<el-input  placeholder="请输入手机号码" v-model="ruleForm2.phone_num"></el-input>
		  		</el-form-item>
		  		<el-form-item  prop="verify" style="width:180px">
		  			<el-input  type="text" placeholder="请输入验证码" v-model="ruleForm2.verify"></el-input></el-input><el-button type="primary" plain @click='getNote()'>{{message}}</el-button>
		  		</el-form-item>
		  	</el-form>
		  	<div class="btn_box">
		  		<input type="button" value="手机号登录" class="one_btn btn">
		  		<a class="two_btn btn" @click="userLogin()">用户名密码登录</a>
		  	</div>
		  	<div class="other">
		  		<span></span>
		  		<p>其他方式登录</p>
		  		<span></span>
		  	</div>	 
			<div class="other_box">
		  		<a class="qq"><img src="../assets/images/QQ.png"></a>
		  		<a class="blog"><img src="../assets/images/blog.png"></a>
		  		<a class="pay"><img src="../assets/images/pay.png"></a>
		  	</div>					  		
		 </div>
		 <div v-if="userlogin==true" class="form_list">
		  	<el-form :model="ruleForm"  :rules="rules" ref="ruleForm">

		  		<el-form-item  prop="username">
		  			<el-input  placeholder="请输入用户名/手机号码" v-model="ruleForm.username"></el-input>
		  		</el-form-item>
		  		<el-form-item  prop="userpwd">
		  			<el-input :type="look==true?'password':'text'" placeholder="请输入密码" v-model="ruleForm.userpwd"></el-input>
		  			<img src="../assets/images/cantsee.png" v-if="look==true" @click="lookon()">  
		  						<img src="../assets/images/cansee.png" v-if="look==false" @click="lookon()"> 
		  		</el-form-item>
		  	</el-form>
		  	<div class="btn_box">
		  		<input type="button" value="我要登录" class="one_btn btn" @click="Login()">
		  		<a class="two_btn btn" @click="phoneLogin()">手机验证码登录</a>
		  	</div>
		  	<div class="other">
		  		<span></span>
		  		<p>其他方式登录</p>
		  		<span></span>
		  	</div>	 
			<div class="other_box">
		  		<a class="qq"><img src="../assets/images/QQ.png"></a>
		  		<a class="blog"><img src="../assets/images/blog.png"></a>
		  		<a class="pay"><img src="../assets/images/pay.png"></a>
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
    import {Toast} from 'mint-ui'
	export default {
        data(){
            return {
                user_name:"",
                user_pwd:"",
                userlogin:false,//false时为用户名登陆，true时为手机登陆
                timer:null,
                time:0,
                message:"获取验证码",
                look:true,
                ruleForm:{
					username:'',
					userpwd:'',
				},
				ruleForm2:{
					phone_num:'',
					verify:'',
				},
				rules:{
					username:[
						{required:true,message:'用户名不能为空！'},
						{min:3,max:8,message:'用户名必需是3到8位之间'}
					],
					userpwd:[
						{required:true,message:'密码不能为空！'},
						{min:3,max:10,message:'密码必需是3到10位之间'}
					]
				},
				rules2:{
					phone_num:[
						{required:true,message:'手机号码不能为空！'},
						{min:11,max:11,message:'手机号码必须为11位！'},
						{type: 'number', message: '手机号码必须为数字值'}
					],
					verify:[
						{required:true,message:'验证码不能为空'}
					]
				}
            }
        },
        methods:{
            Login : function () {
            	this.$refs.ruleForm.validate((result)=>{
            		if (result == true) {
            			this.$http.post('/user/doLogin',{
            				u_name:this.ruleForm.username,
            				u_pwd:this.ruleForm.userpwd,
            			}).then((rtnData)=>{
            				if (rtnData.data == false) {
            					Toast('用户名或密码错误！')
            				}else{
            					localStorage.setItem('uid',rtnData.data.id)
            					localStorage.setItem('user_name',rtnData.data.user_name)
            					this.$store.commit('setUserStatus',[rtnData.data,1])
            					this.$router.push('/my')
            				}
            			})
            		}else{
            			return false;
            		}
            	})
            },
            lookon:function(){
            	this.look=!this.look;
            },
            userLogin : function(){
        	this.userlogin=true
        	},
        	phoneLogin : function(){
            	this.userlogin=false
        	},
        	getNote:function(){
				this.time=9;
				clearTimeout(this.timer);
				var that=this;
				this.timer=setInterval(function(){
					that.message=that.time+'S';
					that.time--;
					if(that.time==0){
						clearTimeout(that.timer);
                    	that.message='重新获取';
					}
				},1000)
			},
       	},  
    }
</script>
<style>
    .input_num .phone_num{
    	width: 85%;
		height: 50%;
		height: 45px;
		line-height: 45px;		
		border-bottom: 1px solid #e0e0e0;
		overflow: hidden;
    }
	.login{
		width: 100%;
		height: 100vh;
		background: #eee;
		color: #666;
	}
	.login_header{
		padding: 40px 0 22px;
		text-align: center;
	}
	.login_header img{
		width: 49px;
    	height: 48px;
    	margin: 0 auto 22px;
	}
	.login_header .title{
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

		position: relative;
	}
	.input_box .input_num span{
		line-height: 20px;
		text-align: center;
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
	.input_box .input_num>img{
		position: absolute;
		width: 40px;
		right: 20px;
		top: 5px;
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
	.foot_box ul li a{font-size: 12px;}
	.form_list .el-input__inner{
		width: 100%;
    border: none;
    height: 45px;
    line-height: 45px;
    padding-left: 20px;
    border-radius: 8px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-size: 18px;
	}
	.form_list .el-form-item__content{
		margin-left:0;
	}
	.form_list .el-button--primary.is-plain{
		position:absolute;
	}
	.form_list .el-button{
    height: 45px;
    width: 78%;
    display: inline-block;
    line-height: 1;
    white-space: nowrap;
    cursor: pointer;
    border: 1px solid #dcdfe6;
    -webkit-appearance: none;
    text-align: center;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    outline: 0;
    margin: 0;
    -webkit-transition: .1s;
    transition: .1s;
    font-weight: 500;
    padding: 12px 20px;
    font-size: 14px;
    border-radius: 10px;
    margin-left: 15px;
	}
	.el-form-item img{
		width: 30px;
		position: absolute;
		right:10px;
		top:10px;
	}
</style>