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
                <in-details></in-details>
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
import Details from './content'
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
        "in-details":Details,
        "in-formation":Information
    }
}
</script>