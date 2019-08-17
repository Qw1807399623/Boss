<template>
    <div class="filtrate">
        <div @click="show(0)">
            经验
            <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[0].isDowm}">
            <ul :class="{'my_ul':true,'show':isShow[0].isDowm}" >
                <li>不限</li>
                <li>在校生</li>
                <li>应届生</li>
                <li>一年以内</li>
                <li>1-3年</li>
                <li>3-5年</li>
                <li>5-10年</li>
                <li>10年以上</li>
            </ul>
        </div>
        <div @click="show(1)">
            学历
            <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[1].isDowm}">
            <ul :class="{'my_ul':true,'show':isShow[1].isDowm}">
                <li>不限</li>
                <li>初中及以下</li>
                <li>中专/中技</li>
                <li>高中</li>
                <li>大专</li>
                <li>本科</li>
                <li>硕士</li>
                <li>博士</li>
            </ul>
        </div>
        <div @click="show(2)">
            薪资
            <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[2].isDowm}">
            <ul :class="{'my_ul':true,'show':isShow[2].isDowm}">
                <li>不限</li>
                <li>3-5K以下</li>
                <li>3-5K</li>
                <li>5-10K</li>
                <li>10-15K</li>
                <li>15-20K</li>
                <li>20-30K</li>
                <li>30-50K</li>
                <li>50K以上</li>
            </ul>
        </div>
        <div @click="show(3)">
            规模
            <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[3].isDowm}">
            <ul :class="{'my_ul':true,'show':isShow[3].isDowm}">
                <li>不限</li>
                <li>0-20人</li>
                <li>20-99人</li>
                <li>100-499人</li>
                <li>500-999人</li>
                <li>1000-9999人</li>
                <li>10000人以上</li>
            </ul>
        </div>
        <div @click="show(4)">
            融资
            <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[4].isDowm}">
            <ul :class="{'my_ul':true,'show':isShow[4].isDowm}">
                <li>不限</li>
                <li>未融资</li>
                <li>天使轮</li>
                <li>A轮</li>
                <li>B轮</li>
                <li>C轮</li>
                <li>D轮</li>
                <li>已上市</li>
                <li>不需要融资</li>
            </ul>
        </div>
    </div>
</template>
<script>
export default {
    data () {
        return {
            isShow:[
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
            ]
        }
    },
    methods: {
        show(n){
            for(var i=0;i<this.isShow.length;i++){
                if(n==i){
                    if(this.isShow[i].isDowm==true){
                        this.isShow[i].isDowm=false
                    }else{
                        this.isShow[i].isDowm=true
                    }
                }else{
                    this.isShow[i].isDowm=false
                }
            }
        }
    }
}
</script>
<style scoped>
    .black{
        color:#000000 !important;
    }
    .show{
        display: block !important;
    }
    .my_ul{
        list-style: none;
        position: absolute;
        background-color: #fff;
        top:30px;
        left:0px;
        padding: 0px;
        display:none;
        margin:0px;
        z-index:2;
        width:100%;
    }
    .my_ul>li{
        height:60px;
        color:#000000;
        border-bottom:solid 1px #dddddd;
        font-size:17px;
        line-height:60px;
        text-align: left;
        padding-left:10px;
    }
    .rotate{
        transform:rotate(180deg)
    }
    .filtrate{
        position: relative;
        display:flex;
        border-top:solid 1px #dddddd;
        border-bottom:solid 1px #dddddd;
    }
    .filtrate>div{
        width:20%;
        margin:7px 0;
        color:#aaaaaa;
        font-size:11px;
    }
    .bottom{
        height:10px;
        position: relative;
        top:0px;
    }
</style>


