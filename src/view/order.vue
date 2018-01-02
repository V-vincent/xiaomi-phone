<template>
    <div>
        <el-table :data="cart_list" width="100%" @selection-change="handleSelectionChange">
            <el-table-column type="selection"></el-table-column>

            <el-table-column prop="goods_name" label="商品名称"></el-table-column>
            <el-table-column label="购买数量">
                <template slot-scope="scope">
                    <div class="div_number">
                        <el-input-number :min="1" :max="9" @change="handleChange" v-model="scope.row.buy_num" size="small"></el-input-number>
                    </div>
                </template>
            </el-table-column>
            <el-table-column prop="price"label="商品单价"></el-table-column>

        </el-table>
        <el-row>
            <el-col :span="8">
                <span style="font-size:12px">共 {{total_sum2}}件商品，已选择 {{total_num}} 件</span>
            </el-col>
            <el-col  :span="16">
                合计： {{total_price}}元
				<el-button type="primary">去结算</el-button>
            </el-col>

        </el-row>
    </div>
</template>
<script type="es6">
    import lockr from 'lockr'

    export default {
        data(){
            return  {
                cart_list : [],
                check_list:[],
                user_info:[],
                total_sum:0,
            }
        },
        created(){
            this.init()
        },
        computed:{
            total_num: function () {
                let num = 0
                this.check_list.forEach((item)=>{
                    num += item.buy_num
                })
                return num
            },
            total_price : function () {
                let sum_price = 0
                this.check_list.forEach((item)=>{
                    sum_price += item.buy_num*item.price
                })
                return sum_price
            },
            total_sum2  : function(){
                let sum = 0;
                this.cart_list.forEach((item)=>{
                    sum += parseInt(item.buy_num);
                })
                return sum
            }
        },
        methods:{
            init:function () {
                this.$http.get('/user/doLogin2').then((rtnData)=>{
                    this.user_info = rtnData.data;
                }).then((rtnData)=>{
                    this.$http.get('/cart/getCart',{
                        params:{
                            uid:this.user_info.id,
                        }}).then((rtnData)=>{
                        this.cart_list = rtnData.data;
                        
                    });
                });

            },
            handleSelectionChange:function (val) {
                this.check_list = val
                console.log(val);
            },
            handleChange:function (val) {
                console.log(val);
            }
        },
        mounted(){
            // dom操作都是在mounted生命周期
            this.init()
        }

    }
</script>
<style>

    .div_number .el-input-number{    width: 88px;}

    .div_number .el-input-number__decrease, .div_number .el-input-number__increase{width: 26px;}
</style>