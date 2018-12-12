import Vue from 'vue'
import Router from 'vue-router'
import Home from "./components/Home.vue"
import Goal from './components/goal.vue'
import Login from './components/login.vue'
import Register from './components/register.vue'
import Seting from './components/set.vue'
import Maket from './components/maket.vue'
import New from './components/news/new.vue'
import Search from './components/header/search.vue'
import MyColl from './components/myColl.vue'



//注册
Vue.use(Router)

//配置访问自定义路径
export default new Router({
   routes:[
       {path:"/home",name:'home',component:Home},
       {path:'/home/new/:id',name:'new',component:New},
       {path:'/',name:'home',redirect:"/home"},        //快速跳转到home界面
       {path:'/goal',name:'goal',component:Goal},
       {path:"/login",name:'login',component:Login},
       {path:"/reg",name:'reg',component:Register},
       {path:"/set",name:"set",component:Seting},
       {path:'/mycoll/:uid',component:MyColl},
       {path:"/mak",name:'mak',component:Maket},
	   {path:"/search",name:'search',component:Search}
       
   ]
})
