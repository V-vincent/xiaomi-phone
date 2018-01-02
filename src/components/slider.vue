<template>
	<div class="slider-box">
		 <ul @touchstart="startTime($event)"  @touchmove="moveTime($event)" @touchend="slider()">
		 	<li :style="'left:' +slider_li_left">
				<img :src="slider_img[2]">
				<img :src="slider_img[0]">
				<img :src="slider_img[1]">
				<img :src="slider_img[2]">
				<img :src="slider_img[0]">
		 	</li>
		 </ul>
		<ol>
			<li :class="cur==1?'cur':''"></li>
			<li :class="cur==2?'cur':''"></li>
			<li :class="cur==0?'cur':''"></li>
		</ol>
	</div>
</template>
<script type="es6">
	export default {
		data(){
			return {
                cur_index:1,
				start_x:0,
				slider_li_left:0,
				slider_offset_width:0,
                ul_l:0,
				cur:1,
				direction:null,
                timer:null,
                speed:0
			}
		},
		props:['slider_img'],
		mounted(){
			this.init()
		},
		methods:{
			init:function () {
				this.slider_offset_width = document.querySelector(".slider-box>ul>li").offsetWidth/5+"px"
				 this.slider_li_left=-this.slider_offset_width;
			},
			startTime:function (event) {
				this.start_x = event.targetTouches[0].clientX
					//把初始x坐标记录 
			},
			moveTime:function (event) {
				 
				if (this.start_x > event.targetTouches[0].clientX) {
					this.direction = 'left'
				}else{
					this.direction = 'right'
				}
			},
			slider:function () {
				if (this.direction == 'left') {
					if (this.cur_index == this.slider_img.length-1) {
						this.cur_index = 1
                        this.slider_li_left=-this.cur_index*this.slider_offset_width;
					}
						this.cur_index++

				}else{
					if (this.cur_index == 0 ) { //之前的下标
						// 下一次的下标
						this.cur_index = this.slider_img.length-2
                        this.slider_li_left=-this.cur_index*this.slider_offset_width;
                    }
						this.cur_index--
				}
                var box=document.querySelector(".slider-box>ul>li");
                this.ul_l=-this.cur_index*box.offsetWidth/5;
                clearInterval(this.timer);
                var that=this;
                this.timer=setInterval(function () {
                    that.speed=(that.ul_l-box.offsetLeft)/10;
                    that.speed= that.speed > 0 ? Math.ceil(that.speed) : Math.floor(that.speed);
                    box.style.left=box.offsetLeft+that.speed+"px";
                    if(that.speed == 0){
                        clearInterval(that.timer);
                    }
                },20);
                var oli=document.querySelectorAll(".slider-box>ol>li");
                if(this.cur_index==0||this.cur_index==3){
                    this.cur=0
				}else if(this.cur_index==1||this.cur_index==4){
                    this.cur=1
				} if(this.cur_index==2){
                    this.cur=2
                }
			}
		}
	}
</script>
<style lang="scss">
	.slider-box{
		position: relative;
	}
	.slider-box>ul{
		width: 100%;
		height: auto;
		overflow: hidden;
	}
	.slider-box>ul>li{
		width: 500%;
		height: auto;
		overflow: hidden;
		position: relative;
		top: 0;
		left: 0;
	}
	.slider-box>ul>li>img{
		width: 20%;
		float: left;
	}
	.slider-box>ol{
		width: 60px;
		height: 10px;
		margin: -10px auto;
		position: relative;
		z-index: 99;
	}
	.slider-box>ol>li{
		height: 10px;
		width: 10px;
		border-radius: 50%;
		background-color: rgba(255,255,255,0.5);
		float: left;
		margin: 0 5px;
		position: relative;
		top: -10px;
	}
	.slider-box>ol>li.cur{
		background-color: #fff;
	}
</style>