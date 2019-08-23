<template>
    <div>
        <seek></seek>
        <filtrate></filtrate>
        <Mycontent></Mycontent>
        <div class="none">
            <img src="../../public/img/icon-empty.png">
            <p>没有找到相关职位</p>
        </div>
    </div>
</template>
<script>
import seek from "../components/boss/profession_header";
import filtrate from "../components/boss/filtrate";
import Mycontent from "./content";
export default {
    data(){
        return{
        }
    },
    components: {
        "seek":seek,
        "filtrate":filtrate,
        "Mycontent":Mycontent,
    }
}
</script>    
<style scoped>
    .none{
        position:fixed;
        top:180px;
        left:30%;
        z-index:-1;
    }
    .none>img{
        width:96px;
        height:120px;
    }
    .none{
        color:#7e8793;
        font-size:15px;
    }
</style>





    