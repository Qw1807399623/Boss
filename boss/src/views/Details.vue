<template>
    <div>
        <div id="header">
            <a href="javascript:;"><span>BOSS直聘</span></a>
            <input id="search" placeholder="搜索职位" type="text">
            <div class="searchBg"></div>
        </div>
        <div class="title">
            <table></table>
            <h2>云平台架构师</h2><span class="sal">20-30k</span>
            <div class="condition ">
                <i>上海</i><span>|</span><i>5-10年</i><span>|</span><i>本科</i>
            </div>
            <p>云</p>
            <div class="turnover">更新于:2019-08-19</div>
        </div>
        <div class="contact">
            <table></table>
            <div class="contact_img">
                <img src="../../public/img_Aaron/contact.jpg" alt="">
            </div>
            <div>陈女士<span class="interested">感兴趣</span></div>
            <p>携程旅游网</p>
            <a type="button" href="javascript:;">立即沟通</a>
        </div>
        <div>
            <h1>职位描述</h1>
        </div>
        <hr>
        <div>
            <h1>团队介绍</h1>
        </div>
        <hr>
        <div>
            <h1>公司介绍</h1>
        </div>
        <hr>
        <div>
            <h1>工商信息</h1>
        </div>
    </div> 


</template>
<script>
export default {
    data(){
        return{

        }
    },
    methods:{

    }
}
</script>

<style scoped>
/*===============header============*/
#header{
    position:relative;
    height:47px;
    background-color:#fff; 
    width:100%;
}
#header>a{
    font-size:25px;
    font-weight:bolder;
    color:#5dd5c8;
    position:absolute;
    margin-left:-198px;
    margin-top:7px;
    text-decoration: none;

}
#search{
    border:1px solid green;
    border-radius:50px;
    height:26px;
    width:120px;
    position:absolute;
    margin:9px 0 0 73px;
    padding-left:10px;
    box-sizing: border-box;
}
#header div.searchBg{
    width:26px;
    height:26px;    
    background-image:url("../../public/img_Aaron/icons.png");
    margin-left:365px;
    background-size:18px;
    position:absolute;
    z-index: 5;
    background-position-y: 10px;
    margin:5px 0 0 376px;
    background-repeat: no-repeat;
}
#header::before{
    contain: "";
    display: table;
}
/* ==================body=================== */
.title{
    width:100%;
    height:150px;
    background-color: #62d5c8;
    margin-top: -21px;
    color:#fff;

}
.title>h2{
    text-align: left;
    margin:30px 0 0 15px;
}
.sal{
    margin:-28px 0 0 280px;
    display: block;
    font-size:25px;
}
.title>p{
    border:1px solid #fff;
    border-radius: 50px;
    padding:0 5px 0 5px;;
    margin-left:-345px;
    display:inline-block;
}
.condition{
    margin:5px  0 0 -250px;
    font-size:15px;
} 
.title>i{
    font-size:10px;
}
.turnover{
    margin-left:-240px;
}
.contact{
    width:100%;
    height:100px;
    background: #eefbf9;
}
.contact_img{
    width:60px;
    height:60px;
    border:1px solid #000;
    border-radius: 100%;
    overflow: hidden;
    margin-top:20px;
}
.contact_img>img{
    width:60px;
    height:60px;
}
</style>