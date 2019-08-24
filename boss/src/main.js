import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Tabbar from './views/Tabbar'
Vue.component("tabBar",Tabbar)
import 'vant/lib/button/style'
import { Overlay } from 'vant';

Vue.use(Overlay);
//mint-ui
import { Button } from 'vant'
Vue.use(Button);
import MintUi from "mint-ui"
import 'mint-ui/lib/style.css'

axios.defaults.baseURL='http://127.0.0.1:3000/'

Vue.prototype.axios=axios;

import "mint-ui/lib/style.css"
Vue.use(MintUi)
axios.defaults.baseURL='http://127.0.0.1:3000/'
Vue.use(MintUi)
//element-ui
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI)
Vue.config.productionTip = false
axios.defaults.withCredentials = true;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
