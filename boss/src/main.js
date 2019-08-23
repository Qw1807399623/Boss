import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
//mint-ui
import MintUi from "mint-ui";
import 'mint-ui/lib/style.css'

axios.defaults.baseURL='http://127.0.0.1:3000/'

Vue.prototype.axios=axios;
import "mint-ui/lib/style.css"
Vue.use(MintUi)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
