import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Login from './views/Login.vue'
import Reg from './views/Reg.vue'
import AboutUs from './views/AboutUs.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {path:"/Login",component:Login},
    {path:"/Reg",component:Reg},
    {path:'/',name:'home',component:Home},
	 {path:'/AboutUs',component:AboutUs},
  ]
})