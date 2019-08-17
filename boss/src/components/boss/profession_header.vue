<template>
    <div>
        <div class="header">
            <img src="../../../public/img/首页.png" id="home_page">
            <div class="search_box">
                <div id="city" @click="handleShow($event)">
                    <span>{{isCity}}</span>
                    <img src="../../../public/img/dowm.png" id="dowm2" :class="{'rotate':isrotate}">
                </div>
                <input type="text" placeholder="搜索职位" v-model:value="kwords">
            </div>
            <div class="seek"  @click="search">搜索</div>
        </div>
        <div :class="{'city_box':true,'show':isShow}" v-if="isNone">
            <div class="back">
                <img src="../../../public/img/cha.png" alt="" id="back" @click="handleHide">
                <div>选择城市</div>
            </div>
            <div class="city" @click="city">
                <ul>
                    <li class="gray">热门城市</li>
                    <li>北京</li>
                    <li>上海</li>
                    <li>天津</li>
                    <li>重庆</li>
                    <li>黑龙江</li>
                    <li>吉林</li>
                    <li>辽宁</li>
                    <li>内蒙古</li>
                    <li>河北</li>
                </ul>
                <ul class="gray">
                    <li>全国</li>
                    <li>北京</li>
                    <li>上海</li>
                    <li>广州</li>
                    <li>深圳</li>
                    <li>杭州</li>
                    <li>天津</li>
                    <li>西安</li>
                    <li>苏州</li>
                    <li>武汉</li>
                </ul>
            </div>
        </div> 
    </div>
</template>
<script>
export default {
    data () {
        return {
            isShow:false,
            isNone:false,
            isrotate:false,
            isCity:"广州",
            kwords:"",
        }
    },
    methods:{
        search(){
                console.log(this.kwords)
        },
        city(e){
            if(e.target.innerHTML!="热门城市"){
                this.isCity=e.target.innerHTML
                this.isShow = false;
                setTimeout(()=>{
                    this.isNone = false;
                },400)
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
    watch: {
        kwords(){
            this.search()
        }
    }
}
</script>
<style scoped>
    .rotate{
        transform:rotate(180deg)
    }
    .show {
        top:0 !important;
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
    }
    .back>div{
        position: relative;
        left:140px;
    }
    .city_box{
        transition: all .4s linear;
        position:absolute;
        width:100%;
        background-color:#ffffff;
        /* display:none; */
        transform: translateY(10%);
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

