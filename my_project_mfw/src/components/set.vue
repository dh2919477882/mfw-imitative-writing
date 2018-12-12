<template>
		<div id="setting" class="mui-page">
                <div class="mui-navbar-inner mui-bar mui-bar-nav">
                        <h1 class="mui-center mui-title">我的窝</h1>
                 </div>       
                 <div class="first"></div>
                 <div class="userbg">
                    <div class="pic">
                        <img src="../../public/img/北京.jpeg" alt="">
                    </div>
                    <div class="uname">{{uname}}</div>
                 </div>
                 <ul class="mui-table-view mui-table-view-chevron heitop">
                        <li class="mui-table-view-cell">
                            <a @click="tomyColl" class="mui-navigate-right">我的收藏</a>
                        </li>
                        <li class="mui-table-view-cell">
                            <a href="#privacy" class="mui-navigate-right">我的点评</a>
                        </li>
                        <li class="mui-table-view-cell">
                            <a href="#general" class="mui-navigate-right">我的游记</a>
                        </li>
                </ul>
                <ul class="mui-table-view mui-table-view-chevron">
                        <li class="mui-table-view-cell">
                            <a href="#about" class="mui-navigate-right">关于马蜂窝 <i class="mui-pull-right update">V3.1.0</i></a>
                        </li>
                    </ul>
                <ul class="mui-table-view">
                        <li class="mui-table-view-cell" style="text-align: center;">
                            <a class="btn" @click="loginout">{{isLogin}}</a>
                        </li>
                </ul>
                <foot></foot>
        </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    import foot from './tab/footer.vue'
   export default{
       data(){
            return{
                uname:"未登录",
                isLogin:"登录"
            }
       },
       methods:{
           loginout(){
               if(this.isLogin=='退出登录'){
               localStorage.removeItem("uid")
               localStorage.removeItem("uphone")
               history.go(0)
             }else if(this.isLogin=="登录"){
                 this.$router.push("/login")
             }
           },
           tomyColl(){
               var uid=localStorage.getItem("uid")
               if(uid){
                   this.$router.push('/mycoll/'+uid)
               }else{
                   Toast("请先登录")
               }
           }
       },
       created(){
           if(localStorage.getItem("uid")){
               this.uname=localStorage.getItem("uphone")
               this.isLogin="退出登录"
           }
       },
       components:{
           foot
       }
   }
</script>
<style>
  div#setting{
      height:615px;
  }
  div#setting div.mui-navbar-inner button span.mui-icon{
      color:#f60;
  }
  div#setting div.userbg{
      background:url(../../public/img/userbg.jpg);
      height:160px;
      background-size:cover;
      display:flex;
      flex-direction:column;
      align-items: center;
      justify-content: center;
  }

  div#setting div.userbg div.pic img{
      width:50px;
      height:50px;
      border-radius:50%;
  }
  div#setting div.userbg div.uname{
      color:white;
      font-size:14px;
  }
  div#setting ul{
      margin:30px 0;
  }
  div#setting ul li a{
      color:#f60;
  }
  div#setting ul li a.btn{
      background: #f60;
      color:white;
  }
</style>