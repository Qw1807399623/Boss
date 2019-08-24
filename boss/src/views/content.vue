<template>
    <div>
        <div class="relative" v-for="(p,i) of arr" :key="i">
            <img :src="'http://127.0.0.1:3000/img/'+p.jpg" class="title-img">
            <div class="content-box">
                <h1 class="title">{{p.position}}</h1>
                <h4 class="title2">{{p.pname}}                 
                    {{p.financing}}</h4>
                <div class="d-flex">
                    <div class="box">{{p.city}}</div>
                    <div class="box">{{p.age}}</div>
                    <div class="box">{{p.education}}</div>
                </div>
                <div class="d-flex">
                    <img src="../../public/img/下载.jpg" class="img-style">
                    <p>潘艳义-招聘专员</p>
                </div>
            </div>
            <div>
                <h1 class="salary">{{p.minsal}}K-{{p.maxsal}}K</h1>
            </div>
        </div>
    </div>
</template>
<script>
import Bus from '../assets/bus.js'
export default {
    data(){
        return{
            arr:[],
            addr:''
        }
    },
    mounted: function () {
      var vm = this
      Bus.$on('val', (data) => {
        console.log(data)
        vm.arr = data

      })
    },
    methods: {
        getData: function () {
        console.log(this.name)
        },
        search(){
              this.axios.get('http://127.0.0.1:3000/search')
                .then(result=>{
                    this.arr=result.data;
                    // console.log(this.arr);
                    this.arr=sessionStorage.getItem('val')
                    console.log(this.arr)
                })
        },
        load(){
            this.addr = sessionStorage.getItem('val')
            console.log(this.addr);
             this.axios.get(
            "http://127.0.0.1:3000/pro"
        ).then(result=>{
            this.arr=result.data;
            // console.log(this.arr);
        }) 
         var param=sessionStorage.getItem('val')
                    console.log(param)
        }
    },
    created(){
        this.load()
                  
    },
}
</script>
<style scoped> 
    .relative{
        position: relative;
        display: flex;
        background:#ffffff;
        border-bottom:solid 1px #dddddd;
    }
    .content-box{
        position: relative;
        margin-left:10px;
    }
    .salary{
        position: absolute;
        right:5px;top:5px;
        margin:0px;
        font-size:23px;
        color:#fc6c38;
    }
    .title{
        font-size:15px;
        text-align: left;
        margin:7px 0px;
    }
    .title2{
        font-size:10px;
        margin:6px 0px;
        text-align: left;
    }
    .d-flex{
        display:flex;
        margin:7px 0px 4px;
    }
    .img-style{
        height:30px;
    }
    .img-style+p{
        margin:7px 0 0 7px;
        font-size:7px;
    }
    .box{
        background-color:#dddddd;
        padding:4px 7px;
        margin-left:3px;
        border-radius:5px;
        font-size:10px;
    }
    .title-img{
        position: relative;
        left:0px;
        width:80px;
        margin:10px 0 0 10px;
        height:80px;
    }
</style>





