<template>
    <div>
        <div id="BoosReg">    
            <div class="RegTitle">
                <h3>注册BOSS直聘</h3>
            </div>
            <div class="formInput">
                <img src="../../public/img/Regphone.png" class="Regphone"/>
                <input class="myUnameInput" type="text" placeholder="手机号" name="phone"/>
                <div class="Downpull">
                    <label>
                        <span>+86</span>
                        <img src="../../public/img/Regup.png" class="down"/>
                    </label>
                </div>
                <div id="pullDrowList">
                    <ul>
                        <li dtaa-val=""><span>中国大陆</span><span>+86</span></li>
                        <li dtaa-val=""><span>美国</span><span>+1</span></li>
                        <li dtaa-val=""><span>香港</span><span>+852</span></li>
                        <li dtaa-val=""><span>日本</span><span>+81</span></li>
                        <li dtaa-val=""><span>台湾</span><span>+886</span></li>
                        <li dtaa-val=""><span>英国</span><span>+44</span></li>
                        <li dtaa-val=""><span>韩国</span><span>+82</span></li>
                        <li dtaa-val=""><span>法国</span><span>+33</span></li>
                        <li dtaa-val=""><span>俄罗斯</span><span>+7</span></li>
                        <li dtaa-val=""><span>意大利</span><span>+39</span></li>
                        <li dtaa-val=""><span>新加坡</span><span>+65</span></li>
                        <li dtaa-val=""><span>菲律宾</span><span>+63</span></li>
                        <li dtaa-val=""><span>马来西亚</span><span>+60</span></li>
                        <li dtaa-val=""><span>新西兰</span><span>+64</span></li>
                        <li dtaa-val=""><span>西班牙</span><span>+34</span></li>
                        <li dtaa-val=""><span>缅甸</span><span>+95</span></li>
                        <li dtaa-val=""><span>毛里求斯</span><span>+230</span></li>
                        <li dtaa-val=""><span>津巴布韦</span><span>+263</span></li>
                        <li dtaa-val=""><span>埃及</span><span>+20</span></li>
                        <li dtaa-val=""><span>巴基斯坦</span><span>+92</span></li>
                        <li dtaa-val=""><span>孟加拉国</span><span>+880</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            
        }
    }
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
}
#BoosReg>.formInput>.Downpull img{
    position: relative; 
    top:2px;
    left: 6px;
    width: 15px;
}
#pullDrowList{
    position: absolute;
    border:1px solid #eee;
    top:56px;
    width: 178px;
    height: 293px;
    line-height: 42px;
    overflow: scroll;
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
}
#pullDrowList li:last-child{
    margin-bottom:3px; 
}
#pullDrowList li span:nth-child(2){
    float: right;
}
</style>
