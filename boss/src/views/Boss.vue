<template>
    <div>
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab1">
                <in-dex></in-dex>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                <in-profession></in-profession>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                <company-list></company-list>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                <in-formation></in-formation>
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="tab1">
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
import Index from './Index'
import CompanyList from './companylist'
import Profession from './profession'
import Information from './Information'
import Bus from '../assets/bus'
export default {
    data(){
        return{
            active:"tab1"
        }
    },
    mounted: function () {
      var vm = this
      Bus.$on('tab', (data) => {
        vm.active = data
      })
    },
    methods:{
        backTo(){
            
            // bus.$on("active",(data)=>{
            //     console.log(data)
            //     this.active=data
            //     console.log(this.active)
            // })
            let active = sessionStorage.getItem('active')
            // this.active = active;
            return active
        }
    },
    created() {
        // this.backTo()
    },
    components:{
        "in-dex":Index,
        "in-profession":Profession,
        "company-list":CompanyList,
        "in-formation":Information
    },
    updated() {
        // console.log('刷新')
        // this.backTo()
        // this.backTo();

    },
    watch: {
        active() {
           this.backTo()
        }
    }
}
</script>
<style scoped>
.mint-tabbar > .mint-tab-item.is-selected{
    color:#20a59c;
}
</style>