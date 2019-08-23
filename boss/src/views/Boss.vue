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
        <tabBar></tabBar>
    </div>
</template>
<script>
import Index from './Index'
import CompanyList from './companylist'
import Profession from './profession'
import Information from './Information'
export default {
    data(){
        return{
            active:"tab3"
        }
    },
    components:{
        "in-dex":Index,
        "in-profession":Profession,
        "company-list":CompanyList,
        "in-formation":Information
    }
}
</script>