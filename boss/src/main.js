import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
//mint-ui
import MintUi from "mint-ui";
Vue.prototype.axios=axios;

import "mint-ui/lib/style.css"
Vue.use(MintUi)
axios.defaults.baseURL='http://127.0.0.1:3000/'
Vue.config.productionTip = false
axios.defaults.withCredentials = true;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
