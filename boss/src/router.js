import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Login from './views/Login.vue'
import Reg from './views/Reg.vue'
import Company from './views/Company.vue'
import companyList from './views/companylist.vue'
import Details from './views/Details.vue'
import Profession from './views/profession.vue'
import Information from './views/Information.vue'
import Upgrade from './views/Upgrade.vue'
import Index from './views/Index.vue'
import Boss from './views/Boss.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/Bobo",component:Boss},
    {path:"/Index",component:Index},
    {path:"/Details",component:Details},
    {path:"/Information",component:Information},
    {path:"/Login",component:Login},
    {path:"/Pro",component:Profession},
    {path:"/Reg",component:Reg},
    {path:"/Upgrade",component:Upgrade},
    {path:'/',name: 'home',component: Home},
    {path:"/companyList",component:companyList},
    {path:'/',name:'home',component:Home},
	 {path:'/Company/:cid',component:Company,props:true}
	 
  ]
})