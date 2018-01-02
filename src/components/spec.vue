<template>
    <div class="specMenu">
        <div class="buy-show">

            <div class="close" @click="close_box">
                <span>x</span>
            </div>
            <div class="bb"  @click="close_box">
                <div class="productImg">
                    <img src="../assets/images/goods_1.jpg" alt="">
                </div>
                <div class="prodese clear">
                    <p class="price">￥599</p>
                    <p class="name"> 红米5A 铂银灰 16GB</p>
                </div>
            </div>
              <slot> </slot>
            <div class="max">
                <div>
                    <p class="specTitle">颜色</p>
                    <ul class="spec">
                        <li class="specItem" v-for="(color,index) in color_list" @click="choose_item('color',index)" :class="{'run':cur_color==index}"><p>{{color}}</p></li>
                    </ul>
                </div>
                <div>
                    <p class="specTitle">容量</p>
                    <div class="spec">
                        <div class="specItem" v-for="(version,index) in version_list" @click="choose_item('version',index)" :class="{'run':cur_version==index}">{{version}}</div>
                    </div>
                </div>
                <div class="buy">
                    <div class="specTitle">购买数量</div>
                    <div class="addNum">
                        <div class="sub">
                            <div class="input-sub" @click="change_num(false)"></div>
                        </div>
                        <div class="num sub">{{buy_num}}</div>
                        <div class="sub">
                            <div class="input-add" @click="change_num(true)"></div>
                        </div>
                    </div>
                </div>
                <div class="safe">
                    <div class="specTitle">
                        意外保险
                        <a href="#">
                            xx
                        </a>
                        <span>(可多选)</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn" @click="close_box">
            <div>加入购物车</div>
        </div>

    </div>
</template>

<script type="es6">
    export default {
        name: 'SpecMenu',
        data(){
            return {
                color_list:["铂银灰","樱花粉","香槟金","浅蓝色"],
                cur_color: 0,
                version_list:["16G","32G"],
                cur_version: 0,
                buy_num: 1,
            }
        },
        methods:{
            close_box(){
                this.$emit("close_box");
            },
            //选择颜色,版本
            choose_item(string,index){
                this["cur_"+string] = index;
            },
            // 添加、减少数量
            change_num(boolean){
                console.log("sdad");
                if (boolean) {
                    this.buy_num++;
                    return;
                }
                this.buy_num--;
                if (this.buy_num<1) {
                    this.buy_num = 1;
                }
            }
        }
    }
</script>

<style lang="scss">
    .specMenu{
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
        top: 0;
        background-color: rgba(0,0,0,.3);
        color: #000;
        z-index: 99;
        .buy-show{
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: #fff;
            padding: .32rem .32rem 1.27rem;
            width: 100%;
            height: 65%;
            .close{
                position: absolute;
                top: .16rem;
                right: 2rem;
                font-size: 1.5rem;
                width: 2.5rem;
                height: 2.5rem;
                span{
                    display: block;
                    width: 2.5rem;
                    height:2.5rem; 
                    background-size: cover;
                }
            }
            .bb{
                border-bottom: 1px solid #f4f4f4;
                padding: 0 1rem;
                margin: auto;
                min-height: 6.5rem;
                display: -webkit-box;
                -webkit-box-pack: center;
                -webkit-box-orient: horizontal;
                .productImg{
                    width: 10rem;
                    height: 10rem;
                    margin-top: -20%;
                    img{
                        width: 100%;
                        height: auto;
                        border-radius: 2px;
                    }
                }
                .prodese{
                    flex: 1;
                    display: flex;
                    margin-left: .8rem;
                    margin-top: .68rem;
                    flex-direction: column;
                    .price{
                        position: relative;
                        display: inline-block;
                        width: 5rem;
                        margin-left: .25rem;
                        font-size: 1.8rem;
                        color: #f56600;
                    }
                    .name{
                        font-size: 1.3rem;
                        color: rgba(0,0,0,.87);
                        line-height: 2rem;
                    }
                }
            }
            .max{
                height: 20rem;
                overflow-y: auto;
                overflow-x: hidden;
                padding: 0 1.3rem;
                .specTitle{
                    position: relative;
                    margin-top: 1.32rem;
                    margin-bottom: .16rem;
                    line-height: 1.24rem;
                    font-size: 1.2rem;
                    color: rgba(0,0,0,.87);
                }
                .spec{
                    padding-bottom: 1.5rem;
                    overflow: hidden;
                    border-bottom: 1px solid #f4f4f4;
                    .specItem{
                        width: 23%;
                        float: left;
                        height: 2.8rem;
                        line-height: 2.8rem;
                        min-width: 1.45rem;
                        box-sizing: border-box;
                        text-align: center;
                        border: 1px solid rgba(0,0,0,.15);
                        border-radius: 2px;
                        margin: .8rem .5rem 0 0;
                    }
                    .run{
                        border: 1px solid #f56600;
                    }
                }
                .buy{
                    border-bottom: 1px solid #f4f4f4;
                    padding: 1.3rem 0;
                    display: -webkit-box;
                    justify-content: space-between!important;
                    align-items: center;
                    .addNum{
                        .sub{
                            float: left;
                            margin: 0;
                            padding: 0;
                            width: 2.68rem;
                            height: 2.68rem;
                            border: 1px solid #f4f4f4;
                            border-left: 0;
                            box-sizing: border-box;
                            line-height:2.68rem;
                            text-align: center;
                            font-size: .24rem;
                            color: #000;
                            background-color: #fff!important;
                            .input-sub{
                                width: 2.68rem;
                                height: 2.68rem;
                                background-size: 40%;
                            }
                        }
                        .sub{
                            .input-add{
                                width: 2.68rem;
                                height: 2.68rem;
                                background-size: 40%;
                            }
                        }
                    }
                }
                .safe{
                    margin-bottom: 3rem;
                    a{
                        display: inline-block;
                        width:1.2rem;
                        height: 1.2rem;
                        margin-left: .1rem;
                        img{
                            width: auto;
                            height: 100%;
                        }
                    }
                    span{
                        color: rgba(0,0,0,.87);
                    }
                }
            }
        }
        .btn{
            color: #fff;
            text-align: center;
            height: 4rem;
            line-height: 4rem;
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            font-size: .32rem;
            z-index: 99;
            div{
                width: 100%;
                background-color: #f95b07;
            }
        }
    }
</style>