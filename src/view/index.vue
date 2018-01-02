<template>
  <div class="index_box">
    <div class="header">
      <div class="top_header clear">
        <div class="logo"><img src="../assets/images/logo_121d4a6.png"  alt=""></div>
        <div class="search"><a><img src="../assets/images/search_df67e2f.png" alt=""><span class="text">搜索商品名称</span></a></div>
        <div class="login">
          <router-link to="/login" v-if="user_info==''"> 登录</router-link>
          <a v-if="user_info!=''" href="#/My">{{user_info.user_name}}</a>
        </div>    
      </div>
      <ul class="sub_header">
        <li class="active"><a>推荐</a></li>
        <li><a>手机</a></li>
        <li><a>智能</a></li>
        <li><a>电视</a></li>
        <li><a>盒子</a></li>
        <li><a>电脑</a></li>
        <li><a>周边</a></li>
      </ul>
    </div>
    <div class="clear_box"></div>
    <slider :slider_img="slider_img_a"> </slider>
    <ul class="icon_box clear">
      <li><a><img src="../assets/images/f_1.jpg" alt=""></a></li>
      <li><a><img src="../assets/images/f_2.jpg" alt=""></a></li>
      <li><a><img src="../assets/images/f_2.jpg" alt=""></a></li>
      <li><a><img src="../assets/images/f_1.jpg" alt=""></a></li>
    </ul>        
    <div class="title_box clear">
      <div class="img">商城早报</div>
      <div class="content">红米5/5 Plus新特性，她已泄密67%…</div>
    </div>
    <ul class="picture_box">
      <li class="picture_list">
        <div class="left">
          <a><img src="https://i8.mifile.cn/v1/a1/64de69fc-46eb-886b-8250-8050555b016e!358x508.webp?bg=ACBEC7" ></a>
        </div>
        <div class="right">
           <a><img src="https://i8.mifile.cn/v1/a1/ca09e500-d6cb-5eda-5219-1552774753d5!358x252.webp?bg=C2C6D1" ></a>
           <a><img src="https://i8.mifile.cn/v1/a1/bedb2307-7fdd-10f4-0667-57d170014e09!358x252.webp?bg=D2C273"></a>
        </div>
      </li>
      <li class="picture_list">
        <a><img src="https://i8.mifile.cn/v1/a1/cd2ca853-a080-bcea-8e59-757ef4e60c8e!720x280.webp?bg=483A39"></a>
      </li>
      <li class="picture_list">
        <a><img src="https://i8.mifile.cn/v1/a1/447278b7-7a3d-4b89-0431-6731f1b9a5ce!720x280.webp?bg=6398B0"></a>
      </li>
      <li class="picture_list">
        <a><img src="https://i8.mifile.cn/v1/a1/1b83dcc2-e58c-dc95-62a6-ffa6e28899ef!720x440.webp?bg=DFCBC1"></a>
      </li>               
    </ul>
    <div class="goods_box">
      <ul class="goods_list clear">
        <li>
          <a href="">
          <img src="https://i8.mifile.cn/v1/a1/06cb725b-0a15-e51a-a50d-a4f89da6dd22.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">红米5A 16GB</h3>
            <p class="spec">轻巧长续航</p>
            <p class="price">￥599</p>            
          </div>
          </a>
        </li>    
        <li>
          <img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/df05c81c140c64a3aca5f7a6b1d23626.jpg?width=360&height=360">
          <div class="text">
            <h3 class="name">红米Note 5A 16GB</h3>
            <p class="spec">5.5"高清大屏</p>
            <p class="price">￥699</p>            
          </div>
        </li>    
        <li>
          <img src="https://i8.mifile.cn/v1/a1/a5117c80-b120-b5a4-aaef-d38d781cb94a.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">90分金属登机箱</h3>
            <p class="spec">去旅行，趁年轻</p>
            <p class="price">￥699</p>            
          </div>
        </li> 
        <li>
          <img src="https://i8.mifile.cn/v1/a1/048dd4f4-af0f-9071-3f71-f7359e9f55d4.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">红米Note 4X</h3>
            <p class="spec">多彩金属，超长续航</p>
            <p class="price">￥699</p>            
          </div>
        </li>  
      </ul>
    </div>
    <ul class="picture_box">
      <li class="picture_list">
        <img src="https://i8.mifile.cn/v1/a1/91caf25e-6f1b-df84-98ad-40a3e706cdaa!720x280.webp?bg=CFD5D8" >
      </li>
      <li class="picture_list">
        <img src="https://i8.mifile.cn/v1/a1/2129bf35-c842-7a2c-134f-fe572f5c9f93!720x440.webp?bg=BDDACD" >
      </li>      
    </ul>
    <div class="goods_box">
      <ul class="goods_list clear">
        <li>
          <img src="https://i8.mifile.cn/v1/a1/06cb725b-0a15-e51a-a50d-a4f89da6dd22.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">红米5A 16GB</h3>
            <p class="spec">轻巧长续航</p>
            <p class="price">￥599</p>            
          </div>
        </li>    
        <li>
          <img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/df05c81c140c64a3aca5f7a6b1d23626.jpg?width=360&height=360">
          <div class="text">
            <h3 class="name">红米Note 5A 16GB</h3>
            <p class="spec">5.5"高清大屏</p>
            <p class="price">￥699</p>            
          </div>
        </li>    
        <li>
          <img src="https://i8.mifile.cn/v1/a1/a5117c80-b120-b5a4-aaef-d38d781cb94a.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">90分金属登机箱</h3>
            <p class="spec">去旅行，趁年轻</p>
            <p class="price">￥699</p>            
          </div>
        </li> 
        <li>
          <img src="https://i8.mifile.cn/v1/a1/048dd4f4-af0f-9071-3f71-f7359e9f55d4.webp?width=360&height=360">
          <div class="text">
            <h3 class="name">红米Note 4X</h3>
            <p class="spec">多彩金属，超长续航</p>
            <p class="price">￥699</p>            
          </div>
        </li>  
      </ul>
    </div> 
    <div class="more_goods_box">
      <h2>更多新品 ></h2>
    </div> 
    <ul class="picture_box">
      <li class="picture_list">
        <img src="https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/78e675b59161f0337f001d5c39597b74.jpg?bg=FFFFFF?thumb=1&w=720&h=280" >
      </li>
      <li class="picture_list">
        <img src="https://i8.mifile.cn/v1/a1/b2ea095d-ef04-326b-47b5-c074ade77092!720x440.webp?bg=F2F5F7" >
      </li>      
    </ul>
    <div class="goods_box goods_box02 clear">
      <ul class="goods_list">
        <li>
          <div class="pict">
            <img src="https://i8.mifile.cn/v1/a1/7d41e6a2-0b7e-4d2b-f897-33f0a90be2d0.webp?width=360&height=360">
          </div>
          <div class="text02">
            <h3 class="name">红米5A 16GB</h3>
            <p class="spec">轻巧长续航</p>
            <p class="price">￥599</p>               
          </div>
        </li>
        <li>
          <div class="text02">
            <h3 class="name">红米5A 16GB</h3>
            <p class="spec">轻巧长续航</p>
            <p class="price">￥599</p>               
          </div>          
          <div class="pict">
            <img src="https://i8.mifile.cn/v1/a1/7d41e6a2-0b7e-4d2b-f897-33f0a90be2d0.webp?width=360&height=360">
          </div>
        </li>    
        <li>
          <div class="pict">
            <img src="https://i8.mifile.cn/v1/a1/7d41e6a2-0b7e-4d2b-f897-33f0a90be2d0.webp?width=360&height=360">
          </div>
          <div class="text02">
            <h3 class="name">红米5A 16GB</h3>
            <p class="spec">轻巧长续航</p>
            <p class="price">￥599</p>               
          </div>
        </li>            
      </ul>
    </div> 
    <div class="more_goods_box">
      <h2>更多米家智能产品 ></h2>
    </div>  
    <ul class="picture_box">
      <li class="picture_list">
        <img src="https://i8.mifile.cn/v1/a1/9c45de41-d74d-1f8c-048a-c311a7dcae87!720x280.webp?bg=ECDBC9" >
      </li>
      <li class="picture_list">
        <img src="https://i8.mifile.cn/v1/a1/5fbfac26-f239-faf0-e2b6-1d84d9ade207!720x440.webp?bg=D3C6A5" >
      </li>      
    </ul>
    <div class="clear_box" style="height:3.5rem;"></div>            
  </div>
</template>

<script>
import slider from '../components/slider'
export default {
  name: 'index',
  data () {
    return {
      slider_img_a: [
        require('../assets/images/slider_1.jpg'),
        require('../assets/images/slider_2.jpg'),
        require('../assets/images/slider_3.jpg'),
        require('../assets/images/slider_1.jpg'),
        require('../assets/images/slider_2.jpg')
      ],
      user_info: ''
    }
  },
  components: {
    slider
  },
  methods: {
    init: function () {
      this.$http.get('/user/doLogin2').then((rtnData) => {
        this.user_info = rtnData.data
      })
    }
  },
  mounted () {
    this.init()
  }

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
@import "../assets/common";
.index_box{ text-align: center;}
.clear_box{
  width:100%;
  height: 4.5rem;  
}
.header{
  font-size: .8rem;
  background: #fafafa;
  position: fixed;
  top: 0;
  width:100%;
  height: 4.5rem;
  z-index: 3;
  .top_header{
     padding:.35rem;
    .logo{
      @include flotter(12%);
      padding: .45rem;
      box-sizing: border-box;
    }
    .search{
        line-height: .34rem;
        height: 1.9rem;
        border-radius: 3px;
        border: 1px solid #e5e5e5;
        background: #fff;
        box-sizing: border-box;
        @include flotter(76%);
        a{
          display: block;
          height: 100%;
          padding: .1rem .6rem;
          text-align:left;
          position: relative;
          img{
            position: absolute;
            left:0;
            z-index:1;
          }
          .text{
            z-index:2;
            position: absolute;
            left:2.5rem;            
            font-size: .26rem;
            color: rgba(0,0,0,.3);
            line-height: 1.8rem;
          }
        }
    }  
    .login{
     @include flotter(12%);
     line-height: 1.6rem;
     height: 1.6rem;
     box-sizing: border-box;     
    }  
  }
  .sub_header{
    width:100%;
    li{
      @include flotter(14%);
    }
    .active{color:$topic_css;}
  }
}
.icon_box {
  margin-top:10px;
  border-bottom:1px solid #ccc;
  li{@include flotter(25%)}
}
.title_box{
  width:100%;
  height:3rem;
  box-sizing: border-box; 
  padding:1.1rem 0;
  .img{
    @include flotter(20%)
    color:$topic_css;
  }
  .content{
    @include flotter(80%)
    border-left:1px solid #ccc;
    box-sizing: border-box; 
    font-size: 1.0rem;
  }
}
.picture_box{
  width: 100%;
  background: rgb(245, 245, 245);
  .picture_list{
    margin-top: .7rem;
    .left{
       @include flotter(50%);
       padding-right:3px;
       box-sizing: border-box;
    }
    .right{
      @include flotter(50%);
        padding-left:3px;
       box-sizing: border-box;      
    }

  }
}
.goods_box{
  .goods_list{
    li{
      @include flotter(50%);
      padding:2px;
      box-sizing: border-box;
      .text{
        text-align: left;
        padding:.7rem;
        .name{
          font-size: 1.0rem;
          color: rgba(0,0,0,.87);
        }
        .spec{
          color: rgba(0,0,0,.54);
          font-size: .9rem;
        }
        .price{
          color:$topic_css;
          font-size: .9rem;
        }
      }
    }
  }
}
.more_goods_box{
  width: 100%;
  height: 2.8rem;
  line-height: 2.8rem;
  color: rgba(0,0,0,.6);
  border-top: 1px solid #ccc;
}
.goods_box02{
  .goods_list{
    li{
      padding:0px;
      width:100%;
      .pict{
        @include flotter(50%);
      }
      .text02{
        @include flotter(50%);
        text-align: left;
        padding:30px 10px;
        box-sizing: border-box;
        .name{
          font-size: 1.0rem;
          color: rgba(0,0,0,.87);
        }
        .spec{
          color: rgba(0,0,0,.54);
          font-size: .9rem;
        }
        .price{
          color:$topic_css;
          font-size: .9rem;
        }        
      }
    }
  }
}
</style>

