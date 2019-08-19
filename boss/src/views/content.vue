<template>
    <div class="relative">
        <h1 class="title">视觉设计实习生</h1>
        <h1 class="salary">100-150/天</h1>
        <h4 class="title2">安久科技 未融资</h4>
        <div class="d-flex">
            <div class="box">广州</div>
            <div class="box">经验不限</div>
            <div class="box">本科</div>
        </div>
        <div class="d-flex">
            <img src="../../public/img/下载.jpg" class="img-style">
            <p>潘艳义-招聘专员</p>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped> 
    .relative{
        position: relative;
        border-bottom:solid 1px #dddddd;
    }
    .salary{
        position: absolute;
        right:10px;top:0px;
        margin:0px;
        font-size:25px;
    }
    .title{
        font-size:17px;
        position: relative;
        right:110px;
    }
    .title2{
        font-size:13px;
        position: relative;
        right:122px;
        margin:10px 0px;
    }
    .d-flex{
        display:flex;
        margin:5px 0px 5px 15px;
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
</style>





