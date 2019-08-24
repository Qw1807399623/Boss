<template>
    <div class="header">
      <mt-swipe :auto="4000">
        <mt-swipe-item>
          <div class="home_bg1">
            <img src="../../public/img/home-search-text.png" class="home_text">
          </div>
        </mt-swipe-item>
        <mt-swipe-item>
          <div class="home_bg2">
            <img src="../../public/img/home-search-text.png" class="home_text">
          </div>
        </mt-swipe-item>
        <mt-swipe-item>
          <div class="home_bg3">
            <img src="../../public/img/home-search-text.png" class="home_text">
          </div>
        </mt-swipe-item>
      </mt-swipe>
      <div class="search">
        <input type="text" placeholder="搜索职位/公司" v-model="kwords">
        <div @click="search">搜索
        </div>
      </div>
    </div>
</template>
<script>
import Bus from '../assets/bus.js'
export default {
    data () {
        return {
            arr:[],
            kwords:""
        }
    },
    methods:{
      search(){
          sessionStorage.setItem('val',this.kwords)
          this.axios.get('http://127.0.0.1:3000/search',{params:{msg:this.kwords}})
            .then(result=>{
                this.arr=result.data;
                // console.log(result.data);
                Bus.$emit('val',this.arr)
            })
            this.$router.push('/pro')
        },
    }
};
</script>
<style scoped>
    .header{
      height:200px;
    }
    .search{
      position: relative;
      bottom:60px;
      display:flex;
      width:90%;
      height:35px;
      line-height:35px;
      border-radius:10rem;
      background: #ffffff;
      margin:auto;
    }
    .search>input{
      position: relative;
      margin-left:5%;
      width:80%;
      border:0px;
    }
    .home_text{
      margin-top:20px;
      height:100px;
      width:60%;
    }
    .home_bg1{
        width:100%;
        height:200px;
        background:url("../../public/img/1.jpg");
        background-size:cover
    }
    .home_bg2{
        width:100%;
        height:200px;
        background:url("../../public/img/2.jpg");
        background-size:cover
    }
    .home_bg3{
        width:100%;
        height:200px;
        background:url("../../public/img/3.jpg");
        background-size:cover
    }
</style>