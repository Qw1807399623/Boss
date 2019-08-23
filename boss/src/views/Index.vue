<template>
    <div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/technology.png" alt="">
                <span class="technical_title">技术</span>
            </div>
            <div class="myTab">
                <span>Java</span>
                <span>PHP</span>
                <span> Web前端</span>
                <span>数据挖掘</span>
                <span>C++</span>
                <span>Python</span>
                <span>Andorid</span>
                <span>iOS</span>
            </div>
        </div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/product.png" alt="">
                <span class="technical_title">产品</span>
            </div>
            <div class="myTab">
                <span>产品经理</span>
                <span>产品助理</span>
                <span>网页产品经理</span>
                <span>数据产品经理</span>
            </div>
        </div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/designer.png" alt="">
                <span class="technical_title">设计</span>
            </div>
            <div class="myTab">
                <span>UI设计师</span>
                <span>平面设计师</span>
                <span>交互设计师</span>
                <span>设计总监</span>
            </div>
        </div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/market.png" alt="">
                <span class="technical_title">市场</span>
            </div>
            <div class="myTab">
                <span>市场营销</span>
                <span>商务渠道</span>
                <span>品牌公关</span>
                <span>市场总监</span>
                <span>策划经理</span>
                <span>活动策划</span>
                <span>SEO</span>
                <span>SEM</span>
            </div>
        </div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/operate.png" alt="">
                <span class="technical_title">运营</span>
            </div>
            <div class="myTab">
                <span>用户运营</span>
                <span>产品运营</span>
                <span>新媒体运营</span>
                <span>运营总监</span>
                <span>商家运营</span>
                <span>电商运营</span>
                <span>编辑</span>
                <span>客服经理</span>
            </div>
        </div>
        <div class="technical">
            <div class="my_lineHeight">
                <img class="my_img" src="../../public/img/senior.png" alt="">
                <span class="technical_title">职能/高级管理</span>
            </div>
            <div class="myTab">
                <span>人力资源</span>
                <span>行政</span>
                <span>财务</span>
                <span>会记</span>
                <span>HRBP</span>
            </div>
        </div>
        <div class="myFooter">
            <div>
                <span>违法和不良信息举报邮箱:</span>
                <span>jubao@kanzhun.com</span>
            </div>
            <div>
                <span>企业服务热线和举报投诉:</span>
                <span>400 065 5799</span>
            </div>
        </div>
    </div>
</template>
<style scoped>
.technical{
    text-align: left;
    padding-top: 20px;
    padding-left:20px;
    border:1px solid #eee;
    
}
.my_lineHeight{
   margin-bottom:30px;
    
}
.technical .my_img{
    width: 50px;
    height: 50px;
}
.technical .technical_title{
   position: relative;
   bottom:19px;
   left: 20px;
}
.technical .myTab {
    display: flex;
    flex-wrap: wrap;
}
.technical .myTab span{
    height: 29px;
    line-height: 13px;
    background: #e4e7e9;
    margin-right:15px;
    margin-bottom:15px;
    padding: 8px 16px;
    border-radius: 20px;
    box-sizing: border-box;
    font-size: 12px;
}
.myFooter{
    font-size: 12px;
}
.myFooter div:nth-child(1){
    color:#aaa;
    margin-top:20px;
}
.myFooter div:nth-child(2){
    color:#aaa;
    margin-top:10px;
    margin-bottom:80px;
}
</style>