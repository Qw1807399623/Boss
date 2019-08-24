<template>
    <div>
        <div id="BoosReg">    
            <div class="RegTitle"  >
                <h3 @click="myback">注册BOSS直聘</h3>
            </div>
            <div class="formInput">
                <img src="../../public/img/Regphone.png" class="Regphone"/>
                <input @blur="phoneTest" v-model="phoneVal" class="myUnameInput" type="text" placeholder="手机号" name="phone"/>
                <div class="Downpull">
                    <label @click="ChangeShow">
                        <span>{{val}}</span>
                        <img :src="myimgs?require('../../public/img/Regup.png'):require('../../public/img/down+86.png')" class="down"/>
                    </label>
                </div>
                <div id="pullDrowList" v-show="show==1">
                    <ul @click="ChangeVal">
                        <li data-canclick="true" data-val="+86"><span data-canclick="true" data-val="+86">中国大陆</span><span data-canclick="true" data-val="+86">+86</span></li>
                        <li data-canclick="true" data-val="+1"><span data-canclick="true" data-val="+1">美国</span><span data-canclick="true" data-val="+1">+1</span></li>
                        <li data-canclick="true" data-val="+852"><span data-canclick="true" data-val="+852">香港</span><span data-canclick="true" data-val="+852">+852</span></li>
                        <li data-canclick="true" data-val="+81"><span data-canclick="true" data-val="+81">日本</span><span data-canclick="true" data-val="+81">+81</span></li>
                        <li data-canclick="true" data-val="+886"><span data-canclick="true" data-val="+886">台湾</span><span data-canclick="true" data-val="+886">+886</span></li>
                        <li data-canclick="true" data-val="+44"><span data-canclick="true" data-val="+44">英国</span><span data-canclick="true" data-val="+44">+44</span></li>
                        <li data-canclick="true" data-val="+82"><span  data-canclick="true" data-val="+82">韩国</span><span  data-canclick="true" data-val="+82">+82</span></li>
                        <li data-canclick="true" data-val="+33"><span data-canclick="true" data-val="+33">法国</span><span data-canclick="true" data-val="+33">+33</span></li>
                        <li data-canclick="true" data-val="+7"><span data-canclick="true" data-val="+7">俄罗斯</span><span data-canclick="true" data-val="+7">+7</span></li>
                        <li data-canclick="true" data-val="+39"><span data-canclick="true" data-val="+39">意大利</span><span data-canclick="true" data-val="+39">+39</span></li>
                        <li data-canclick="true" data-val="+65"><span data-canclick="true" data-val="+65">新加坡</span><span data-canclick="true" data-val="+65">+65</span></li>
                        <li data-canclick="true" data-val="+63"><span data-canclick="true" data-val="+63">菲律宾</span><span data-canclick="true" data-val="+63">+63</span></li>
                        <li data-canclick="true" data-val="+60"><span data-canclick="true" data-val="+60">马来西亚</span><span data-canclick="true" data-val="+60">+60</span></li>
                        <li data-canclick="true" data-val="+64"><span data-canclick="true" data-val="+64">新西兰</span><span data-canclick="true" data-val="+64">+64</span></li>
                        <li data-canclick="true" data-val="+34"><span data-canclick="true" data-val="+34">西班牙</span><span data-canclick="true" data-val="+34">+34</span></li>
                        <li data-canclick="true" data-val="+95"><span data-canclick="true" data-val="+95">缅甸</span><span data-canclick="true" data-val="+95">+95</span></li>
                        <li data-canclick="true" data-val="+230"><span data-canclick="true" data-val="+230">毛里求斯</span><span data-canclick="true" data-val="+230">+230</span></li>
                        <li data-canclick="true" data-val="+263"><span data-canclick="true" data-val="+263">津巴布韦</span><span data-canclick="true" data-val="+263">+263</span></li>
                        <li data-canclick="true" data-val="+20"><span data-canclick="true" data-val="+20">埃及</span><span data-canclick="true" data-val="+20">+20</span></li>
                        <li data-canclick="true" data-val="+92"><span data-canclick="true" data-val="+92">巴基斯坦</span><span data-canclick="true" data-val="+92">+92</span></li>
                        <li data-canclick="true" data-val="+880"><span data-canclick="true" data-val="+880">孟加拉国</span><span data-canclick="true" data-val="+880">+880</span></li>
                    </ul>
                </div>
                <div class="restDiv">
                    <input class="myRestInput" disabled placeholder="请向右滑动验证"/>
                    <div class="slideDiv" :style="myPosition" @touchstart="tStart($event)" @touchmove="tMove($event)" @touchend="tEnd">
                        <img src="../../public/img/slide.png" />
                    </div>
                    <input type="text" v-show="myPosition.left==297+'px'" disabled class="RestOkInput" placeholder="验证成功">
                </div>
                <div class="upwdDiv">
                    <img src="../../public/img/Regpasswork.png"/>
                    <input @blur="upwdTest" v-model="upwdVal" type="password" name="upwd" class="myPwdInput" placeholder="请输入密码(6~16位的数字或字母)"/>
                </div>
                <div class="msgDiv">
                    <img src="../../public/img/test.png"/>
                    <input v-model="msgVal" type="text" class="msgInput" name="message" maxlength="6" placeholder="请输入验证码"/>
                    <div @click=" refreshCode">
                        <s-identify :identifyCode="identifyCode" id="restVal"></s-identify>
                    </div>
                </div>
                <div class="regButton">
                    <button :class="{'RegDisableBg':!myCb}" :disabled="!myCb" @click="Reg">注册</button>
                </div>
                <div class="cbDiv">
                    <label>
                        <input v-model="myCb" type="checkbox" class="cbInput">
                        <span>我已同意用户协议及隐私政策</span>
                    </label>
                    <router-link to="Login" class="toLogin">直接登录</router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import SIdentify from './Identify.vue'
import Bus from '../assets/bus.js'
import qs from 'qs'
export default {
    data(){
        return{
            val:"+86",
            show:undefined,
            myimgs:true,
            identifyCodes: "1234567890",
            identifyCode: "",
            myPosition:{left:0},
            tData:{start:0,end:0},//touch产生的参数
            phoneVal:"",
            upwdVal:"",
            msgVal:"",
            myCb:false,
            active:"",
        }
    },
    components:{
        "s-identify":SIdentify
    },
    methods:{
        myback(){
          this.active="tab1"
          Bus.$emit('tab',this.active)
          this.$router.push('/bobo')
        },
        //手机号验证
        phoneTest(){
            if(this.phoneVal==""){
              /*   this.$toast({
                    message:"请输入手机号",
                    position:"bottom"
                }) */
                return
            }else{
                let reg=/^1[3-8]\d{9}$/;
                if(reg.test(this.phoneVal)==false){
                   /*  this.$toast({
                        message:"手机号格式不正确",
                        position:"bottom"
                        }) */
                        return
                }

            }
        },
        //密码验证
        upwdTest(){
            
             if(this.upwdVal==""){
              /*   this.$toast({
                    message:"请输入密码",
                    position:"bottom"
                    }) */
                    return
            }else{
                let reg=/^[0-9a-z]{6,16}$/i
                if(reg.test(this.upwdVal)==false){
                  /*   this.$toast({
                        message:"密码格式不正确",
                        position:"bottom"
                    }) */
                    return
                }
            }
        },
      

    //注册按钮验证
    Reg(){
        let reg=/^[0-9a-z]{6,16}$/i
         let reg2=/^1[3-8]\d{9}$/;
         
       if(this.upwdVal==""){
                this.$toast({
                    message:"请输入密码",
                    position:"bottom"
                    })
                    return
            }else if(reg.test(this.upwdVal)==false){
                 this.$toast({
                        message:"密码格式不正确",
                        position:"bottom"
                    })
                    return
            }else if(this.phoneVal==""){
                this.$toast({
                    message:"请输入手机号",
                    position:"bottom"
                })
                return
            }else if(reg2.test(this.phoneVal)==false){
                    this.$toast({
                        message:"手机号格式不正确",
                        position:"bottom"
                        })
                        return
                }else if(this.msgVal==""){
            this.$toast({
                message:"请输入验证码",
                    position:"bottom"
                    })
                    return
            }else if(this.msgVal!=this.identifyCode){
                this.$toast({
                    message:"验证码不正确",
                    position:"bottom"
                })
                this.refreshCode();
                return
            }else if(this.myPosition.left!="297px"){
                this.$toast({
                    message:"请滑动通过验证",
                    position:"bottom"
                })
                return
            }else{
            //发axios去查询手机号是否存在,如果存在提示已注册,如果不存在进行sql语句插入数据
            var url = "http://127.0.0.1:3000/reg"
            let phone;
            let upwd;
            console.log(this.phoneVal,this.upwdVal)
            var tmp =qs.stringify({
                phone:this.phoneVal,
                upwd:this.upwdVal
            })
            console.log(tmp)
            this.axios.post(url,tmp).then(res=>{
                if(res.data.code==-1){
                    this.$toast({
                        message:"号码已注册,请直接登录",
                        position:"bottom"
                    })
                }else if(res.data.code==1){
                     this.$toast({
                        message:"注册成功,为您跳转到首页",
                        position:"bottom",
                        
                    })
                    let uid = res.data.data.id;
                    console.log(uid)
                    sessionStorage.setItem("uid",uid);
                    this.$router.push('/bobo')  
                
                }
            })
            }
        },
        // touchstart
        tStart(e) {
            let tData = this.tData;
            tData.start = e.touches[0].pageX;
            // console.log(this.tData.start)
        },
        // touchmove
        tMove(e) {
            let tData = this.tData;
            tData.end = e.touches[0].pageX;
            // console.log(this.tData.end)
            let myPosition = this.myPosition;
            let left = tData.end-tData.start + 'px';
            myPosition.left = left;
            console.log(myPosition.left)
            if(tData.end-tData.start<0){
                myPosition.left=0+"px"
                return
            }
            if(tData.end-tData.start>300){
                myPosition.left=297+"px" 
                // return
            }
            // if(myPosition.left>"295px"){
            //     myPosition.left="295px"
            // }
        },
        // touchend
        tEnd(){
            let tData = this.tData;
            if(this.myPosition.left<"295px"){
                this.myPosition.left=0
            }
            // let myPosition = this.myPosition;
            // let left = tData.end-tData.start + 'px';
            // myPosition.left = left;
        },
        
        // slideToTest(e){
        //       let offsetX=e.offsetX
        //       console.log(offsetX)
        //      let left = e.clientX - offsetX;
        //     console.log(left);  
                   
        //             this.myPosition.left=left+"px"
                 
        //     },
            
     
        ChangeVal(e){
            if(e.target.dataset.canclick){
            this.val=e.target.dataset.val
            console.log(e.target.dataset.val);
            this.show=undefined;
            }
        },
        ChangeShow(){
           
            if(this.show==1){
                this.show=undefined;
                this.myimgs=false;
            }else{
                this.show=1;
                this.myimgs=true;
            }
        },
        ramdomNum(min,max){
            return Math.floor(Math.random()*(max-min)+min)
        },
         refreshCode(){
            this.identifyCode="";
            this.makeCode(this.identifyCodes,4)
            
        },
        makeCode(o,l){
            for(let i = 0;i<l;i++){
                this.identifyCode+=this.identifyCodes[this.ramdomNum(0,this.identifyCodes.length)]
            }
        },

        
    },
    mounted() {
        this.identifyCode="";
        this.makeCode(this.identifyCodes,4)
          
        
    },
}
</script>
<style scoped>
#BoosReg{
    padding:0px 15px;    
    box-sizing: border-box;
}
#BoosReg>.RegTitle{
    padding: 30px 0;
    position: relative;
}
#BoosReg>.RegTitle>h3{
    color: #5dd5c8;
    margin:0;
    font-size: 26px;
}
#BoosReg>.formInput{
    position: relative;
}
#BoosReg>.formInput>.myUnameInput{
    position: relative;
    box-sizing: border-box;
    font-size:14px;
    width: 345px;
    height: 42px;
    margin-top:15px;
    padding-top:9px;
    padding-bottom:9px;
    padding-left:95px;
    padding-right:18px;  
    border:1px solid #ddd;
}
#BoosReg>.formInput>.Regphone{
    width: 20px;
    height: 23px;
    position: absolute;
    top:25px;
    left: 15px;
    z-index: 1;
}
#BoosReg>.formInput>.Downpull{
    position: absolute;
    top:26px;
    left: 38px;
    width: 50px;
}
#BoosReg>.formInput>.Downpull span{
    font-size: 13px;
    cursor: pointer;
}
#BoosReg>.formInput>.Downpull img{
    position: relative; 
    top:2px;
    left: 6px;
    width: 15px;
    cursor: pointer;
}
#pullDrowList{
    position: absolute;
    border:1px solid #eee;
    top:56px;
    width: 178px;
    height: 293px;
    line-height: 42px;
    overflow: scroll;
    background: #fff;
    z-index: 5;
}
#pullDrowList ul{
    list-style: none;
    padding: 0;
    margin: 0;
    width: 178px;
    height: 293px;
    overflow: scroll;

}
#pullDrowList li{
    padding: 0 15px;
    margin-right: 0;
    width: 148px;
    height: 42px;
    text-align: left;
    z-index: 5;

}
#pullDrowList li:last-child{
    margin-bottom:3px; 
}
#pullDrowList li span:nth-child(2){
    float: right;
}

#BoosReg>.formInput .myRestInput{
    width: 345px;
    height: 42px;
    background:#eee;
    border:1px solid #ddd;
    padding: 0;
    box-sizing: border-box;
    margin-top:30px;
    text-align: center;
    font-size: 14px;
}
#BoosReg>.formInput .restDiv{
    position: relative;
    left:0;
}
#BoosReg>.formInput .restDiv .slideDiv{
    position: absolute;
    border:1px solid #ddd;
    background: #fff;
    width: 48px;
    height: 40px;
    top:30px;
    /* left:10px; */
    text-align: center;
    line-height: 39px;
    z-index: 1;
}
#BoosReg>.formInput .restDiv .slideDiv img{
    display: inline;
    position: relative;
    top:5px;
}
#BoosReg>.formInput .restDiv .RestOkInput{
    position: absolute;
     width: 346px;
    height: 42px;
    background:rgb(23, 207, 106);
    border:1px solid #ddd;
    padding: 0;
    color: #000;
    box-sizing: border-box;
    text-align: center;
    font-size: 14px;
    top:30px;
    left: 0;
    z-index: 10;
}

#BoosReg>.formInput>.upwdDiv{
    position: relative;
}
#BoosReg>.formInput>.upwdDiv>img{
    position: absolute;
    width: 20px;
    height: 23px;
    top:40px;
    left: 15px;
    z-index: 1;
}
#BoosReg>.formInput>.upwdDiv>.myPwdInput{
    position: relative;
    width: 345px;
    height: 42px;
    border:1px solid #ddd;
    padding: 0;
    padding-left:45px;
    box-sizing: border-box;
    margin-top: 30px;
    font-size: 14px;
}
#BoosReg>.formInput .msgDiv{
    position: relative;
    line-height: 42px;
}
#BoosReg>.formInput .msgDiv img{
    position:absolute;
    width: 20px;
    height: 23px;
    top:40px;
    left:15px;
}
#BoosReg>.formInput .msgDiv .msgInput{
    width: 345px;
    height: 42px;
    border:1px solid #ddd;
    padding: 0;
    padding-left:45px;
    box-sizing: border-box;
    margin-top: 30px;
    font-size: 14px;
}
#BoosReg>.formInput .msgDiv span{
    position: absolute;
    right: 0px;
    top:33px;
    color: #5dd5c8;
    font-size:14px;
    width: 104px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    border-left:1px solid #ddd;
}
#BoosReg>.formInput .regButton button{
    width: 345px;
    height: 42px;
    line-height: 42px;
    text-align: center;
    color: #fff;
    background: #5dd5c8;
    border:0;
    outline: none;
    margin-top:30px;
}
#BoosReg>.formInput .cbDiv{
    margin-top:25px;
    width: 345px;
    height: 26px;
    color:#aaa;
    font-size:15px;
    line-height: 26px;
}
#BoosReg>.formInput .cbDiv label{
    height: 17px;
    line-height: 17px;
}
#BoosReg>.formInput .cbDiv span{
    margin-right: 10px;
    margin-left:5px;
}
#BoosReg>.formInput .cbDiv input{
    position: relative;
    top:2px;
}
#BoosReg>.formInput .cbDiv .toLogin{
    text-decoration:none;
    color: #5dd5c8;
}
#restVal{
    position: absolute;
    width: 136px;
    height: 42px;
    top:32px;
    right:-10px;
    z-index: 5;
}
#BoosReg>.formInput .regButton button.RegDisableBg{
    background: #ddd;
}
</style>
