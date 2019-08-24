<template>
  <div>
    <div id="header">
      <router-link :to="`/pro`">
        <span>BOSS直聘</span>
      </router-link>
      <input id="search" placeholder="搜索职位" type="text" />
      <div class="searchBg"></div>
    </div>
    <div class="title">
      <table></table>
      <h2>{{arr.position}}</h2>
      <span class="sal">{{arr.sal}}k</span>
      <div class="condition">
        <i>{{arr.city}}</i>
        <span>|</span>
        <i>{{arr.age}}}</i>
        <span>|</span>
        <i>{{arr.education}}</i>
      </div>
      <div class="label">
        <p>{{arr.skill}}</p>
      </div>
      <div class="turnover">更新于:2019-08-19</div>
    </div>
    <div class="contact">
      <table></table>
      <div class="contact_img">
        <img src="../../public/img_Aaron/contact.jpg" alt />
      </div>
      <div class="contact-name">陈女士</div>
      <div class="interested">
        <img src="../../public/img_Aaron/link-like.png" alt />
        <span>感兴趣</span>
      </div>
      <p>{{arr.website}}</p>
      <button class="btn">立即沟通</button>
    </div>
    <div>
      <h1>职位描述</h1>
      <h3></h3>
      <div class="description">
      <br />
        1. 岗位职责：
        <br>
        a. 负责公司运维平台的WEB前端开发；
        <br>
        b. 配合产品经理、后台开发人员完成项目前端开发，负责公司各产品需求开发、易用性改进、界面优化。
        <br>
        2. 岗位要求：
        <br>
        a. 对HTTP协议、网页性能优化有较好的理解，熟悉常用的前端调试技术和工具；
        <br>
        b. 关注前端技术，HTML/CSS/JS基础扎实，熟悉页面架构和常用布局；
        <br>
        c. 对常用JavaScript框架应用有一定的工程经验，有Angulajs、Reactjs、Vue.js 等MVVM框架的实战经历更佳；
        <br>
        d. 对互联网产品可用性、易用性等相关知识有了解，有交互设计基础、视觉设计基础者优先；
        <br>
        e. 有Web后台开发经验，熟悉常用Web框架（如Flask、Django等）优先；
        <br>
        f. 具有良好的业务理解能力、沟通能力和强烈的责任心，具备较强的的团队意识和执行力
      </div>             
    </div>

    <div>
      <h1>团队介绍</h1>
      <h3></h3>
      <br />
    </div>

    <div>
      <h1>公司介绍</h1>
      <h3></h3>
      <p
        class="pIntroduction"
      >Lorem ipsum dolor, sit amet consectetur adipisicing elit. Optio ducimus quia ad, maiores odio assumenda tempore in dolore doloremque cupiditate, officia consequuntur molestiae tempora ab. Labore expedita consequuntur minima! Reprehenderit.</p>
      <div class="divIntroduction"></div>
      <a class="introduction" href="javdscript:;">查看全部</a>
    </div>

    <div class="business">
      <h1>工商信息</h1>
      <h3></h3>
      <div>
        <tr>
          <td>
            法人代表：
            <span>陈炳俊</span>
          </td>
          <td>
            注册资本：
            <span>1490万美元</span>
          </td>
        </tr>
        <tr>
          <td>
            成立时间：
            <span>2008-05-08</span>
          </td>
          <td>
            经营状态：
            <span>开业</span>
          </td>
        </tr>
        <a href="javascript:;">展开</a>
      </div>
      <p class="businessP">
        数据来源:
        <span>企查查</span>
      </p>
    </div>
    <div class="address">
      <h1>工作地址</h1>
      <h3></h3>
      <div class="city-fa">
        <div class="city-img"></div>
        <div class="city">广东省广州市</div>
      </div>
      <canvas></canvas>
    </div>
    <div class="corporation">
      <!-- <table></table> -->
      <img src="../../public/img_Aaron/corporation.jpg" alt />
      <div class="jj">
        <div>宇信科技</div>
        <p>北京宇信科技集团股份有限公司</p>
        <a>上海</a>
        <span>|</span>
        <a>5-10年</a>
        <span>|</span>
        <a>本科</a>
        <button class="btn btn2">关注该公司</button>
      </div>
    </div>
    <div>
      <h1>相似职位</h1>
     <div v-for="(item,i) of list" :key="i"> 
       <h3></h3>
        <div class="recommend">
          <img :src="`http://127.0.0.1:3000/img/${item.jpg}`" />
        </div>
        <h2>{{item.position}}</h2>
        <a href="javascript:;">
          {{item.pname}}
          <span>|</span>
          <span>{{item.city}}</span>
        </a>
        <p class="pay">{{item.minsal}}-{{item.maxsal}}K</p>
        <button>立即沟通</button>
        <h3 class="bottomh3"></h3>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      arr: {},
      list:[]
    };
  },
  methods: {
    loadMore() {
      var url = "deta";
      this.axios.get(url).then(result => {
        // console.log(result);
        this.arr=result.data[0];
        console.log(this.arr)
      });

      this.axios.get("details2").then(result=>{
        console.log(result.data.data);
        this.list=result.data.data;
      })
    }
  },
  created() {
      this.loadMore();
  }
};
</script>

<style scoped>
/*===============header============*/
.description{
  text-align: left;
  width:90%;
  padding:5%;
}
#header {
  position: relative;
  height: 47px;
  background-color: #fff;
  width: 100%;
}
#header > a {
  font-size: 25px;
  font-weight: bolder;
  color: #5dd5c8;
  position: absolute;
  margin-left: -198px;
  margin-top: 7px;
  text-decoration: none;
}
#search {
  border: 1px solid #62d5c8;
  border-radius: 50px;
  height: 26px;
  width: 120px;
  position: absolute;
  margin: 9px 0 0 73px;
  padding-left: 10px;
  box-sizing: border-box;
  /* color:#d2c9cf; */
  font-size: 10px;
  outline: none;
}
#search::placeholder {
  color: #d2c9cf;
}
#header div.searchBg {
  width: 26px;
  height: 26px;
  background-image: url("../../public/img_Aaron/icons.png");
  margin-left: 365px;
  background-size: 18px;
  position: absolute;
  z-index: 5;
  background-position-y: 10px;
  margin: 5px 0 0 376px;
  background-repeat: no-repeat;
}
#header::before {
  contain: "";
  display: table;
}
/* ==================body=================== */
.title {
  width: 100%;
  height: 150px;
  background-color: #62d5c8;
  margin-top: -21px;
  color: #fff;
}
.title > h2 {
  text-align: left;
  margin: 30px 0 0 15px;
}
.sal {
  margin: -28px 0 0 280px;
  display: block;
  font-size: 25px;
}
.label {
  text-align: left;
}
.label > p {
  border: 1px solid #fff;
  border-radius: 50px;
  padding: 0 5px 0 5px;
  margin-left: 30px;
  display: inline-block;
}
.condition {
  margin: 5px 0 0 -250px;
  font-size: 14px;
}
.title > i {
  font-size: 10px;
}
.turnover {
  margin-left: -240px;
  color: #bae8d7;
  font-size: 14px;
}
.contact {
  width: 100%;
  height: 100px;
  background: #eefbf9;
}
.contact_img {
  width: 60px;
  height: 60px;
  /* border:1px solid #000; */
  border-radius: 100%;
  overflow: hidden;
  margin-top: 20px;
  margin-left: 20px;
}
.contact_img > img {
  width: 60px;
  height: 60px;
}
.btn {
  border: 1px solid #5dd5c8;
  background-color: #5dd5c8;
  border-radius: 50px;
  width: 110px;
  height: 35px;
  color: #fff;
  margin: -40px 0 0 290px;
  display: block;
  outline: none;
}
.contact-name {
  margin: -55px 0 0 -170px;
  font-size: 18px;
}
.interested {
  margin: -17px 0 0 0px;
  color: #f8a281;
}
.contact > p {
  color: #9fa3af;
  font-size: 12px;
  margin: 15px 0 0 -165px;
}
h1 {
  color: #414a60;
  font-weight: 700;
  position: relative;
  line-height: 44px;
  font-size: 15px;
  margin-left: -320px;
}
h3 {
  content: "";
  width: 15px;
  height: 1px;
  background-color: #62d5c8;
  left: 15px;
  position: relative;
  margin-top: -10px;
}
.introduction {
  width: 100%;
  display: block;
  height: 50px;
  background: #eefbf9;
  text-align: center;
  color: #c7c5b7;
  text-decoration: none;
}
.divIntroduction {
  height: 50px;
  position: relative;
  margin-top: -66px;
  background: linear-gradient(#fff 0%, #eefbf9);
}
.pIntroduction {
  height: 50px;
  width: 100%;
  color: #9fa3b0;
  position: relative;
  z-index: 5;
  overflow: hidden;
  
}
.business {
  margin: auto;
  padding: 5%;
}
.business > div {
  border: 1px solid #ebecef;
}
.business > div > tr {
  list-style-type: none;
  width: 90%;
  /* display: block; */
  height: 40px;
  font-size: 12px;
  vertical-align: middle;
}
.business > div > tr > td {
  width: 50%;
  text-align: left;
  padding-left: 25px;
  color: #9fa3b0;
}
.business > div > a {
  border-top: 1px solid #ebecef;
  height: 30px;
  display: block;
  line-height: 30px;
  text-align: center;
  text-decoration: none;
  color: #9fa3b0;
  font-size: 15px;
}
.businessP {
  color: #9fa3b0;
  font-size: 10px;
  text-align: left;
}
.address {
  padding: 5%;
}
.address > canvas {
  width: 100%;
  background: #62d5c8;
  margin-top: -3px;
}
.city-fa {
  display: flex;
  width: 100%;
  height: 40px;
  background: #fff;
  /* display: inline-block; */
  text-align: left;
  box-shadow: 3px -3px 7px -5px #537772;
}
.city-img {
  width: 20px;
  height: 40px;
  background-image: url("../../public/img_Aaron/icons.png");
  background-size: 22px;
  background-position-y: -47px;
  background-repeat: no-repeat;
}
.city {
  line-height: 40px;
  font-size: 15px;
  color: #000;
  height: 20px;
}
.corporation {
  width: 100%;
  height: 120px;
  background: #eefbf9;
  text-align: left;
  display: flex;
  justify-content: flex-start;
}
.corporation > img {
  width: 70px;
  height: 70px;
  border-style: none;
  padding: 25px;
}
.corporation .jj {
  margin-top: 16px;
}
.corporation .jj {
  color: #9fa3af;
  font-size: 12px;
}
.corporation .jj > div {
  font-size: 17px;
  color: #000;
}
.corporation .jj > p {
  font-size: 12px;
  color: #000;
}
.btn2 {
  margin-left: 175px;
}
.recommend {
  width: 100%;
  height: 80px;
  /* background:#414a60; */
  text-align: left;
}
.recommend > img {
  margin-top: 5px;
  width: 70px;
  height: 70px;
  margin-left: 5px;
}
.bottomh3 {
  margin-top: 20px;
}
.recommend + h2 {
  margin: -60px 0 0 -151px;
  /* color:#eefbf9; */
  font-size: 18px;
}
.recommend + h2 + a {
  font-size: 15px;
  margin-left: -151px;
  text-decoration: none;
  color: #000;
}
.pay {
  color: #fc6c38;
  margin: -38px 0 0 290px;
}
.pay + button {
  height: 31px;
  width: 110px;
  border: 1px solid #5dd5c8;
  color: #5dd5c8;
  background: #fff;
  border-radius: 50px;
  margin-left: 290px;
  outline: none;
}
</style>