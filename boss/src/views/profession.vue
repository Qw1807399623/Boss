<template>
    <div>
        <seek></seek>
        <filtrate></filtrate>
        <Mycontent></Mycontent>
    </div>
</template>
<script>
import seek from "../components/boss/profession_header";
import filtrate from "../components/boss/filtrate";
import Mycontent from "./content";
export default {
    data(){
        return{}
    },
    components: {
        "seek":seek,
        "filtrate":filtrate,
        "Mycontent":Mycontent,
    }
}
</script>    
<style scoped>

</style>





    