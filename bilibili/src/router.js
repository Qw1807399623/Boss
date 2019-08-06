import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import slideshow from './views/slideshow.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',name: 'home',component: Home},
    {path:'/slideshow',component:slideshow},
  ]
})
