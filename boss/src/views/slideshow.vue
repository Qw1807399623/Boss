<template>
    <div class="slideshow_box">
        <img src="../img/slideshow/slideshow1.jpg"  class="left">
        <img src="../img/slideshow/slideshow2.jpg"  :style="Position" class="center">
        <img src="../img/slideshow/slideshow3.jpg" class="right">
    </div>
</template>
<script>
export default {
    data () {
        return {
            Position:{left:0,top:0}
        }
    },
    methods:{
        move(){
            this.Position.left=200+"px";
        }
    },
    created () {
        this.move()
    }
    
}
</script>
<style scoped>
    .slideshow_box{
        position: relative;
        height:500px;
        overflow: hidden;
    }
    .left{
        height:300px;
        position: absolute;
        left:0px;
    }
    .right{
        height:300px;
        position: absolute;
        right:0px;
    }
    .center{
        height:350px;
        position: absolute;
        left:60px;
        z-index:20
    }
    
</style>
