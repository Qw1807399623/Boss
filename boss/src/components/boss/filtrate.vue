<template>
    <div class="filtrate">
        <div>
            经验
            <img src="../../../public/img/向下.png" class="bottom">
        </div>
        <div>
            学历
            <img src="../../../public/img/向下.png" class="bottom">
        </div>
        <div>
            薪资
            <img src="../../../public/img/向下.png" class="bottom">
        </div>
        <div>
            规模
            <img src="../../../public/img/向下.png" class="bottom">
        </div>
        <div>
            融资
            <img src="../../../public/img/向下.png" class="bottom">
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .filtrate{
        display:flex;
        border-top:solid 1px #dddddd;
        border-bottom:solid 1px #dddddd;
    }
    .filtrate>div{
        width:20%;
        margin:7px 0;
        color:#aaaaaa;
        font-size:13px;
    }
    .bottom{
        position: relative;
        top:4px;
    }
</style>


