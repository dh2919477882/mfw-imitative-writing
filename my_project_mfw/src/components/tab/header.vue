<template>
        <!--顶部导航栏-->
        <div class="header">
                <a href="#">
                  <img src="../../../public/img/header/logo2.png" alt="" class="logo">
                </a>
                <div class="mui-input-row mui-search">
                  <input type="search" class="mui-input-clear" placeholder="搜索目的地/攻略/游记" v-model="content" @click="search">
                </div>
                <router-link :to="isLogin?'/set':'/login'" class="login">{{name}}</router-link>
        </div>
</template>
<script>
  import Bus from '../../bus.js'
    export default{
        data(){
            return {
                isLogin:false,
                name:'登录',
                content:'',
                list:[]
            }
        },
        methods:{
            search(){
                    var msg=this.content
                    if(msg==''){return}
                    var url="http://127.0.0.1:3030/index/search?msg="+msg
                      this.axios.get(url).then(res=>{
                          if(res.data.code==200){
                            this.list=res.data.data
                          }else if(res.data.code==201){
                            this.list=[]
                          }
                         Bus.$emit('val',this.list) 
                         this.$router.push('/search')
                })  
            }
        },
        created(){
            if(localStorage.getItem("uid")){this.isLogin=true,this.name='设置'}
                    var that=this;
                    document.onkeydown=function(e){
                        var key=window.event.keyCode
                        if(key==13){
                            that.search()
                        }
                    }
        },
    }
</script>
<style>
  div.header {
    display: flex;
    justify-content: space-between;
    flex-wrap: nowrap;
  }

  div.header a {
    padding: 15px 10px 0;
  }

  div.header a img.logo {
    width: 80px;
    height: 20px;
  }

  div.mui-input-row {
    padding: 8px 0 0;
  }

  div.header div.mui-input-row input {
    width: 220px;
    height: 30px;
    font-size: 12px;
  }

  div.header .login {
    color: #f60;
    font-size: 14px;
  }
</style>