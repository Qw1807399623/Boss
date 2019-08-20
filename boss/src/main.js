import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import 'vant/lib/button/style'
import { Overlay } from 'vant';

Vue.use(Overlay);
//mint-ui
import { Button } from 'vant'
Vue.use(Button);
import MintUi from "mint-ui"
Vue.prototype.axios=axios;
import "mint-ui/lib/style.css"
Vue.use(MintUi)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
