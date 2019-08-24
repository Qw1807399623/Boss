<template>
    <div>
        <div style="text-align:left;background-color:#53beb7;height:40px;">
            <img @click="back" width="30px" style="position:relative;top:5px;left:10px" src="../../public/img/information_back.png" alt="">
        </div>
        <h1>页面升级中...</h1>
    </div>
</template>
<script>
import bus from '../assets/bus'
export default {
    data(){
        return{
            active:"tab4"
        }
    },
    methods:{
        back(){
            sessionStorage.setItem('active',this.active)
            this.$router.go(-1)
            // bus.$emit("active",this.active)
        }
    }
}
</script>
<style scoped>
h1{
    position: relative;
    top:250px;
    font-size: 50px;
}
</style>
