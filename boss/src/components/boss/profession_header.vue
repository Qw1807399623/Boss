<template>
    <div>
        <div class="header">
            <router-link :to="`/bobo`">
                <img src="../../../public/img/首页.png" id="home_page">
            </router-link>
            <div class="search_box">
                <div id="city" @click="handleShow($event)">
                    <span>{{isCity}}</span>
                    <img src="../../../public/img/dowm.png" id="dowm2" :class="{'rotate':isrotate}">
                </div>
                <input type="text" placeholder="搜索职位" v-model="kwords">
            </div>
            <div class="seek"  @click="search">搜索</div>
        </div>
        <div :class="{'city_box':true,'show':isShow}" v-if="isNone" @touchmove.prevent>
            <div class="back">
                <img src="../../../public/img/cha.png" alt="" id="back" @click="handleHide">
                <div>选择城市</div>
            </div>
            <div class="city" @click="city">
                <ul>
                    <li class="gray">热门城市</li>
                    <li data-canclick="true">北京</li>
                    <li data-canclick="true">上海</li>
                    <li data-canclick="true">天津</li>
                    <li data-canclick="true">重庆</li>
                    <li data-canclick="true">黑龙江</li>
                    <li data-canclick="true">吉林</li>
                    <li data-canclick="true">辽宁</li>
                    <li data-canclick="true">内蒙古</li>
                    <li data-canclick="true">河北</li>
                </ul>
                <ul class="gray">
                    <li data-canclick="true">全国</li>
                    <li data-canclick="true">北京</li>
                    <li data-canclick="true">上海</li>
                    <li data-canclick="true">广州</li>
                    <li data-canclick="true">深圳</li>
                    <li data-canclick="true">杭州</li>
                    <li data-canclick="true">天津</li>
                    <li data-canclick="true">西安</li>
                    <li data-canclick="true">苏州</li>
                    <li data-canclick="true">武汉</li>
                </ul>
            </div>
        </div>
        <van-overlay
        @touchmove.prevent
        class="p"
        :show="isShow"
        />
    </div>
</template>
<script>
import Bus from '../../assets/bus.js'
export default {
    data () {
        return {
            isShow:false,
            isNone:false,
            isrotate:false,
            isCity:"广州",
            kwords:"",
            arr:[]
        }
    },
    methods:{
        search(){
              this.axios.get('http://127.0.0.1:3000/search',{params:{msg:this.kwords}})
                .then(result=>{
                    this.arr=result.data;
                    // console.log(result.data);
                    Bus.$emit('val',this.arr)
                })
        },
        city(e){
            if(e.target.dataset.canclick){
                this.isCity=e.target.innerHTML
                this.isShow = false;
                setTimeout(()=>{
                    this.isNone = false;
                },400);
                this.axios.get('http://127.0.0.1:3000/search',{params:{msg:this.isCity}})
                .then(result=>{
                    this.arr=result.data;
                    Bus.$emit('val',this.arr)
                })
            }
        },
        handleShow(e) {
            if(!this.isrotate){
                this.isrotate=true
            }else{
                this.isrotate=false
            }
            if(this.isShow==true){
                this.isShow = false;
                setTimeout(()=>{
                this.isNone = false;
            },400)
                return
            }
            this.isNone = true;
            setTimeout(()=>{
                this.isShow = true;
            },100)
        },
        handleHide(){
            this.isShow = false;
            setTimeout(()=>{
                this.isNone = false;
            },400)
            if(!this.isrotate){
                this.isrotate=true
            }else{
                this.isrotate=false
            }
        }
    },
}
</script>
<style scoped>
    .rotate{
        transform:rotate(180deg)
    }
    .show {
        top:0px !important;
    } 

    .gray{
        background-color:#f8f8fa;
    }
    #back{
        position: relative;
        left:20px;
        height:20px;
    }
    .back{
        display: flex;
        margin:20px 0px;
    }
    .back>div{
        position: relative;
        left:140px;
    }
    .city_box{
        transition: all .4s linear;
        position: fixed;
        width:100%;
        background-color:#ffffff;
        /* display:none; */
        /* transform: translateY(10%); */
        z-index:5;
        top:700px;
        /* transition: all 1s; */
    }
    .city{
        display: flex;
    }
    .city>ul{
        list-style: none;
        width:50%;
        padding:0px;
    }
    .city>ul>li{
        height: 60px;
        line-height: 60px;
    }
    .header{
        display:flex;
        margin:15px 0px;
        height:30px;
    }
    #home_page{
        position: relative;
        top:5px;
        margin-left:10px;
        height:20px;
    }
    .search_box{
        display:flex;
        margin-left:10px;
        width:280px;
        border-radius:20px;
        background-color:#f4f7f9;
    }
    .search_box>input{
        position:relative;
        left:15px;
        background-color:#f4f7f9;
        border: 0;
        padding-left:10px;
        font-size:10px;
        outline-width:0;
    }
    #city{
        position: relative;
        top:4px;
        left:10px;
        font-size:10px;
    }
    #city>span{
        position: relative;
        top:5px;
    }
    #dowm2{
        height: 10px;
        position: relative;
        top:5px;left:5px;
        transition: all 0.3s;
    }
    .seek{
        position: relative;
        top:7px;left:8px;
        margin:0;
        font-size:15px;
        color:#aaaaaa;
    }
</style>

