<template>
    <div class="header">
        <img src="../../../public/img/首页.png" id="home_page">
        <div class="search_box">
            <div id="city">
                <span>广州</span>
                <img src="../../../public/img/向下.png" id="dowm">
            </div>
            <input type="text" placeholder="搜索职位">
        </div>
        <div class="seek">搜索</div>
    </div>
</template>
<script>
export default {

}
</script>
<style scoped>
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
        background-color:#dddddd;
    }
    .search_box>input{
        position:relative;
        left:15px;
        background-color:#dddddd;
        border: 0;
        padding-left:10px;
        font-size:10px;
    }
    #city{
        position: relative;
        top:4px;
        left:10px;
        font-size:10px;
    }
    #dowm{
        position: relative;
        top:3px;left:5px
    }
    .seek{
        position: relative;
        top:7px;left:8px;
        margin:0;
        font-size:12px;
        color:#aaaaaa;
    }
</style>

