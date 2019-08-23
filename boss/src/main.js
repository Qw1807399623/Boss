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
Vue.prototype.axios=axios;
Vue.use(MintUi)
//element-ui
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
