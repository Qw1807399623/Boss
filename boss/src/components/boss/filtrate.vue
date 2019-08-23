<template>
    <div>
        <div class="filtrate">
            <div @click="show(0)">
                经验
                <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[0].isDowm}">
                <ul :class="{'my_ul':true,'show':isShow[0].isDowm}" @touchmove.prevent  @click="search_ag">
                    <li data-canclick="true">不限</li>
                    <li data-canclick="true">在校生</li>
                    <li data-canclick="true">应届生</li>
                    <li data-canclick="true">一年以内</li>
                    <li data-canclick="true">1-3年</li>
                    <li data-canclick="true">3-5年</li>
                    <li data-canclick="true">5-10年</li>
                    <li data-canclick="true">10年以上</li>
                </ul>
            </div>
            <div @click="show(1)">
                学历
                <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[1].isDowm}">
                <ul :class="{'my_ul':true,'show':isShow[1].isDowm}" @touchmove.prevent  @click="search_ed">
                    <li data-canclick="true">不限</li>
                    <li data-canclick="true">初中及以下</li>
                    <li data-canclick="true">中专/中技</li>
                    <li data-canclick="true">高中</li>
                    <li data-canclick="true">大专</li>
                    <li data-canclick="true">本科</li>
                    <li data-canclick="true">硕士</li>
                    <li data-canclick="true">博士</li>
                </ul>
            </div>
            <div @click="show(2)">
                薪资
                <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[2].isDowm}">
                <ul :class="{'my_ul':true,'show':isShow[2].isDowm}" @touchmove.prevent   @click="search_sa">
                    <li data-canclick="true">不限</li>
                    <li data-canclick="true">3-5K以下</li>
                    <li data-canclick="true">3-5K</li>
                    <li data-canclick="true">5-10K</li>
                    <li data-canclick="true">10-15K</li>
                    <li data-canclick="true">15-20K</li>
                    <li data-canclick="true">20-30K</li>
                    <li data-canclick="true">30-50K</li>
                    <li data-canclick="true">50K以上</li>
                </ul>
            </div>
            <div @click="show(3)">
                规模
                <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[3].isDowm}">
                <ul :class="{'my_ul':true,'show':isShow[3].isDowm}" @touchmove.prevent   @click="search_ma">
                    <li data-canclick="true">不限</li>
                    <li data-canclick="true">0-20人</li>
                    <li data-canclick="true">20-99人</li>
                    <li data-canclick="true">100-499人</li>
                    <li data-canclick="true">500-999人</li>
                    <li data-canclick="true">1000-9999人</li>
                    <li data-canclick="true">10000人以上</li>
                </ul>
            </div>
            <div @click="show(4)">
                融资
                <img src="../../../public/img/dowm.png" :class="{'bottom':true,'rotate':isShow[4].isDowm}">
                <ul :class="{'my_ul':true,'show':isShow[4].isDowm}" @touchmove.prevent   @click="search_fi">
                    <li data-canclick="true">不限</li>
                    <li data-canclick="true">未融资</li>
                    <li data-canclick="true">天使轮</li>
                    <li data-canclick="true">A轮</li>
                    <li data-canclick="true">B轮</li>
                    <li data-canclick="true">C轮</li>
                    <li data-canclick="true">D轮</li>
                    <li data-canclick="true">已上市</li>
                    <li data-canclick="true">不需要融资</li>
                </ul>
            </div>
        </div>
        <van-overlay
        @touchmove.prevent
        class="p"
        :show="myshow"
        />
    </div>
</template>
<script>
import Bus from '../../assets/bus.js'
export default {
    data () {
        return {
            isShow:[
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
                {isDowm:false},
            ],
            myshow:false,
            arr:"",
        }
    },
    mounted: function () {
      var vm = this
      // 用$on事件来接收参数
      Bus.$on('val',(data) => {
        console.log(data)
      })
    },
    methods: {
        /* 工作经验 */
        search_ag(e){
            this.arr=e.target.innerHTML;
            if(this.arr=="不限"){this.arr=""};
                this.axios.get('http://127.0.0.1:3000/search2',{params:{msg:this.arr}})
                .then(result=>{
                    this.arr=result.data;
                    Bus.$emit('val',this.arr)
                })
        },
        /* 学历 */
        search_ed(e){
            this.arr=e.target.innerHTML.slice(0,2);
            if(this.arr=="不限"){this.arr=""}
                this.axios.get('http://127.0.0.1:3000/search2',{params:{msg:this.arr}})
                .then(result=>{
                    this.arr=result.data;
                    Bus.$emit('val',this.arr)
                })
        },
        /* 工资 */
        search_sa(e){
            // // console.log(e.target.dataset.code)
            // this.arr=e.target.dataset.code;
            // if(this.arr=="不限"){this.arr=""};
            //     this.axios.get('http://127.0.0.1:3000/search2',{params:{code:this.arr}})
            //     .then(result=>{
            //         this.arr=result.data;
            //         Bus.$emit('val',this.arr)
            //     })
        },
        /* 规模 */
        search_ma(e){
            // this.arr=e.target.innerHTML;
            // if(this.arr=="不限"){this.arr=""};
            //     this.axios.get('http://127.0.0.1:3000/search2',{params:{msg:this.arr}})
            //     .then(result=>{
            //         this.arr=result.data;
            //         Bus.$emit('val',this.arr)
            //     })
        },
        /* 融资 */
        search_fi(e){
            this.arr=e.target.innerHTML;
            if(this.arr=="不限"){this.arr=""};
                this.axios.get('http://127.0.0.1:3000/search2',{params:{msg:this.arr}})
                .then(result=>{
                    this.arr=result.data;
                    Bus.$emit('val',this.arr)
                })
        },
        show(n){
            for(var i=0;i<this.isShow.length;i++){
                if(n==i){
                    if(this.isShow[i].isDowm==true){
                        this.isShow[i].isDowm=false
                        this.myshow=false
                    }else{
                        this.isShow[i].isDowm=true
                        this.myshow=true
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
    .p{
        top:91px !important
    }
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


