import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"


//引入mint-ui 
import 'mint-ui/lib/style.css'
import MintUi from "mint-ui"


// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别  大部分组件都要使用css就在main.js中引入
import "./lib/mui/css/mui.css"
import "./lib/mui/css/icons-extra.css"

//注册mintui
Vue.use(MintUi)

// //axios的一些配置文件
// var instance=axios.create({
//    baseURL:"http://127.0.0.1:3030/",
//    headers:{"Content-Type":"application-www-form-urlencoded"}
// })

//axios并不是vue插件，所以不能使用Vue.use()来注册，所以只能在每个需要发送请求的组件中及时引入，也可以通过修改原型链来使用
Vue.prototype.axios=axios

//在生产模式下阻止vue启动生产提示
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
