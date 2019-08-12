<template>
    <div>
        <div id="BoosReg">    
            <div class="RegTitle">
                <h3>注册BOSS直聘</h3>
            </div>
            <div class="formInput">
                <input class="myUnameInput" type="text">
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
#BoosReg>.formInput>.myUnameInput{
    width: 343px;
    height: 35px;
    border:1px solid #aaa;
}
</style>
