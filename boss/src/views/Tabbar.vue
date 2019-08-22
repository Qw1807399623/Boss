<template>
    <div>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="tab">
                <img src="../../public/img/tabbar_home.png" slot="icon" alt="">
                首页
            </mt-tab-item>
            <mt-tab-item id="tab2">
                <img src="../../public/img/tabbar_ job.png" slot="icon" alt="">
                职位
            </mt-tab-item>
            <mt-tab-item id="tab3">
                <img src="../../public/img/tabbar_company.png" slot="icon" alt="">
                公司
            </mt-tab-item>
            <mt-tab-item id="tab4">
                <img src="../../public/img/tabbar_my.png" slot="icon" alt="">
                我的
            </mt-tab-item>
        </mt-tabbar>        
    </div>
</template>
<script>
export default {
    data(){
        return{
            active:"tab1",
            
        }
    }
}
</script>
<style scoped>
.mint-tabbar > .mint-tab-item.is-selected{
    color:#20a59c;
}
</style>