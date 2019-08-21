<template>
    <div>
        <div id="contain" @touchstart="tStart($event)" @touchmove="tMove($event)">
            <div id="myHeader">
                <img class="find" src="../../public/img/information_find.png" />
                <img class="set" src="../../public/img/information_set.png" />
            </div>
            <div class="personal" v-show="isLogin!=null">
                <div class="nameMsg">
                    <span :class="{'moveUname':isMove}">用户:{{pname}}</span>
                    <div class="msgOnline">
                        <img width="15px" height="15px" src="../../public/img/information_write.png" alt="">
                        <p>
                            我的在线简历
                        </p>
                    </div>
                </div>
                <div class="ImageMsg">
                    <!-- <onload-img></onload-img> -->
                </div>
            </div>
            <div class="communication" v-show="isLogin!=null">
               <ul>
                   <li><span>0</span><p>沟通过</p></li>
                   <li><span>0</span><p>待面试</p></li>
                   <li><span>0</span><p>已投简历</p></li>
                   <li><span>0</span><p>收藏</p></li>  
               </ul> 
            </div>
            <div class="myLogin" v-show="isLogin==null">
                <router-link to="/Login">登录</router-link>
                <span style="margin:0 10px;position:relative;bottom:2px">|</span>
                <router-link to="/Reg">注册</router-link>
            </div>
            <div id="myBody">
                <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_file.png" alt="">
                        <span>附件简历</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                </router-link>
                 <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_add.png" alt="">
                        <span>管理求职意向</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                <div class="myHr">
                    <hr>
                </div>
                </router-link>
                 <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_home.png" alt="">
                        <span>个人主页</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                </router-link>
                 <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_msg.png" alt="">
                        <span>牛人问答</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                 </router-link>
                 <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_attention.png" alt="">
                        <span>关注公司</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                <div class="myHr">
                    <hr>
                </div>
                </router-link>
                  <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_resume.png" alt="">
                        <span>提升简历曝光</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                </router-link>
                <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_wallet.png" alt="">
                        <span>钱包</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                <div class="myHr">
                    <hr>
                </div>
                </router-link>
                 <router-link to="/Upgrade">
                <div class="choose">
                    <div class="dis-inline">
                        <img width="20px" height="20px" src="../../public/img/information_feedback.png" alt="">
                        <span>帮助与反馈</span>
                    </div>
                    <span>
                        <img class="right_m" width="15px" height="15px" src="../../public/img/indormation_right.png" alt="">
                    </span>
                </div>
                <div class="myHr m-b">
                    <hr>
                </div>
                </router-link>
                <div>
                    <button id="quitLogin" @click="quitLogin" v-show="uid!=null">退出登录</button>
                </div>
                <div class="myFooter">
                    <div>
                        <span>客服电话 400-065-5799</span>
                        <span>工作时间9:30-18:30</span>
                    </div>
                    <div>
                        <span>用户协议及隐私政策</span>
                        <span>|</span>
                        <span>经营执照</span>
                        <span>|</span>
                        <span>防骗指南</span>
                        <span>|</span>
                        <span>首都网警</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
// import Onloadimg from './Onloadimg'
export default {
    data(){
        return{
            tData:{start:0,end:0},
            isMove:false,
            uid:null,
            isLogin:null,
            pname:""
        }
    },
    // components:{
    //     "onload-img":Onloadimg
    // },
    methods:{
        tStart(e){
            // console.log("滑动开始");
            let tData=this.tData;
            tData.start=e.touches[0].pageY
            // console.log(tData.start)
        },
        tMove(e){
            // console.log("滑动中");
            let tData = this.tData;
            tData.end = e.touches[0].pageY;
            // console.log(111)
            if(tData.end<tData.start){
                // console.log(this.tData.end-this.tData.start)
                if(this.tData.end-this.tData.start<-9){
                this.isMove=true;
                }
            }else if(tData.end>tData.start){
                console.log(tData.end-tData.start)
                if(tData.end-tData.start>19){
                this.isMove=false
                }
            }
            // console.log(tData.end)
        },
        getUid(){
            var uid= sessionStorage.getItem("uid");
            this.uid=uid
            if(uid!=null){
            this.isLogin=true
            }
            console.log(uid)
        },
        quitLogin(){
            this.uid=null;
            this.isLogin=null
        },
        getPim(){
            var uid = sessionStorage.getItem("uid")
            if(uid!=null){
                this.axios.get("http://127.0.0.1:3000/selectpim",{params:{
                    uid
                }}).then(res=>{
                    console.log(res)
                    this.pname=res.data[0].phone
                })
            }
        }
    },
    created(){
        this.getUid()
        this.getPim()
    }
}
</script>
<style scoped>
.moveUname{
    position: fixed;
    transform: translate(-40px,-50px) scale(0.6);
    transition: all .2s linear;
}
.myHr{
    padding: 0 20PX;
    
    margin-top:20px;
}
.myHr hr{
    border-color:#fff;
    margin:0;
}
.m-b{
    margin-bottom:30px;
}
#contain{
    position: relative;
}
#myHeader{
    position: fixed;
    height: 40px;
    width: 100%;
    padding-top:5px; 
    text-align: right;
    vertical-align:middle;
    border:0;
    box-sizing: border-box;
    background: #53beb7;
    color: aliceblue;
    }
#myHeader::before{
    contain:"";
    display: table;
}
#myHeader .set{
    width: 30px;
    margin-right:10px;
}
#myHeader .find{
    position: relative;
    bottom:4px;
    width: 20px;
     margin-right:10px;
}
#contain .personal{
    display: flex;
    justify-content: space-between;
    height: 150px;
    background: #53beb7;
}
#contain .personal .nameMsg{
    text-align: left;
    margin-top:55px;
    margin-left:20px; 
    height: 60px;
}
#contain .personal .nameMsg span:nth-child(1){
    color: aliceblue;
    display: inline-block;
    font-size: 26px;
    
}
#contain .personal .nameMsg .msgOnline{
    display: flex;
    margin-bottom: 0;
    margin-top:10px;
    color: aliceblue;
    font-size:14px;
}
#contain .personal .nameMsg .msgOnline p{
    margin: 0;
    margin-left:5px; 
}
#contain .personal .ImageMsg{
    margin-top:55px;
    margin-right: 20px;
    width: 55px;
    height: 55px;
    border-radius: 50%;
    background: #f00;
}
#contain .communication{
    height: 60px;
    background: #53beb7;
}
#contain .communication ul{
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-around;
    list-style: none;
    color: aliceblue;
    font-size: 15px;
}
#contain .communication ul p{
    margin:0;
    margin-top:5px;
}
#myBody .choose{
    display: flex;
    justify-content: space-between;
    height: 29px;
    line-height: 29px;
    margin-top:20px;
    vertical-align: middle;
}
#myBody .choose .dis-inline img{
     margin-left: 20px;
    margin-top:2px; 
}
#myBody .choose .dis-inline span{
    position: relative;
    bottom: 6px;
    margin-left: 15px;
}
#quitLogin{
    position: relative;
    box-sizing: border-box;
    font-size:14px;
    width: 345px;
    height: 42px;
    background: #5dd5c8;
    outline: none;
    border: 0;
    color: aliceblue;
    margin-bottom:20px;
}
#myBody .choose .right_m{
    margin-right: 20px;
}
#myBody .myFooter{
    margin-bottom:30px;
    font-size: 12px;
}
#myBody .myFooter div{
    margin:10px 0;
}
#myBody .myFooter span{
    margin:0 5px;
}
#contain .myLogin{
    position: relative;
    z-index: 1;
    line-height: 190px;
    width: 100%;
    height: 190px;
    color:#fff;
    font-size: 30px;
    background: #53beb7;
    z-index: 1;
}
#contain .myLogin a{
    color: #fff;
    text-decoration: none;
}
a{
    text-decoration: none;
    color:#aaa;
}
</style>