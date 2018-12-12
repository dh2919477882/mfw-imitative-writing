<template>
  <div class="app-login">
     <div class="login">
                <img src="../../public/img/header/logo2.png">
    </div>
    <div class="mui-row header">
        <div class="mui-col-xs-6 mui-col-sm-6" :class="flag?'active':''" @click="putong">
            普通登录
        </div>
        <div class="mui-col-xs-6 mui-col-sm-6" :class="flag?'':'active'" @click="yanzheng">
            短信验证码登录
        </div>
    </div>
    <form action="">
        <div v-show="flag">
            <input type="number" placeholder="请输入手机号" v-model="uphone">
            <input type="password" placeholder="请输入密码" v-model="upwd">
        </div>   
        <div v-show="!flag" class="phone">
            <input type="number" placeholder="您的手机号">
            <input type="text" placeholder="验证码">
            <input type="text" placeholder="短信验证码">
            <button class="btnget">免费获取验证码</button>
        </div>   
            <div class="links">
                <a href="#">忘记密码?</a>
            </div>
        
        <button class="btn1 active" @click="Login" type="button">登录</button>
        <button class="btn1" @click.stop.prevent="register">快速注册</button>
    </form>
  </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    export default{
        data(){
            return {
                flag:true,
                uphone:"",
                upwd:'',
                path:"",
                oldUrl:''
            }
        },
        beforeRouteEnter (to, from, next){
            next(vm => {
            // 通过 `vm` 访问组件实例,将值传入oldUrl
            vm.oldUrl = from.path
            })
        },
        methods:{
            yanzheng(){
                this.flag=false
            },
            putong(){
                this.flag=true
            },
            register(){
                this.$router.push('/reg')
            },
            Login(){
                var phone=this.uphone
                var pwd=this.upwd
                var reg=/^1[3578][0-9]{9}$/
                if(!phone){
                    Toast("手机号码不能为空")
                }else if(!reg.test(phone)){ 
                    Toast("手机号码格式不正确")
                }else if(!pwd){
                    Toast("密码不能为空")
                }else{
                    var url="http://127.0.0.1:3030/user/signin"
                    this.axios.post( url,`uphone=${phone}&upwd=${pwd}`).then(res=>{
                        if(res.data.code==200){
                            var uid=res.data.msg[0].uid
                            var uphone=res.data.msg[0].uphone
                            Toast("登录成功，即将返回")
                            localStorage.setItem("uid",uid)
                            localStorage.setItem("uphone",uphone)
                            this.upwd=""
                            setTimeout(()=>{
                                 if(this.oldUrl=='/reg'){
                                    this.$router.push('/home')
                                 }else{
                                this.$router.push(this.oldUrl)
                                }
                            },3000)
                        }else{
                            Toast("账号或密码错误")
                        }
                    })
                }
            }
        },    
        created(){
            this.$store.state.showNav=false
        },
        destroyed(){
            this.$store.state.showNav=true
        },

    }
</script>
<style>
 div.app-login div.login img{
    width:100px;
    height:30px;
  }
  div.app-login div.login{
    align-items: center;
    height:80px;
    display:flex;
    justify-content: center;
  }
  div.app-login{
      height:665px;
  }
  div.app-login div.header div{
      text-align:center;
      padding:10px;
      border-top:2px solid #dadada;
      color:#999;
      background: #fafafa;
  }
  div.app-login div.header div.active{
      color:#ffba33;
      border-top:2px solid #ffba33;
      background:white;
  }
  form{
      margin-top:35px;
      text-align: center;
  }
 div.app-login form input{
     width:95%;
     margin:0;
     height:45px;
 }
 
 div.app-login form input:focus{
     outline:1px solid #ffba33;
 }
 div.app-login form input[type=number]{
     border-bottom:none;
     border-radius:5px 5px 0 0;
 }
 div.app-login form input[type=password]{
     border-radius:0 0 5px 5px;
 }
 div.app-login form div.phone input:nth-child(2){
     border-radius:0;
 }
 div.app-login form div.phone button.btnget{
     width:110px;
     height:35px;
     font-size:12px;
     color:white;
     background: #ff8a00;
     border:none;
     position:relative;
     bottom:40px;
     left:120px;
 }
 div.app-login form input:nth-child(3){
     border-top:none;
     border-radius:0  0 5px 5px;
 }
 div.app-login form div.links{
     margin:10px 0;
     text-align: right;
 }
 div.app-login form div.links a{
     color:#999;
     font-size:12px;
     padding:0 10px;
 }
 div.app-login form button.btn1{
     width:95%;
     background: white;
     color:#ffba33;
     border:1px solid #ffba33;
     height:40px;
     border-radius:5px;
     font-size:18px;
     margin:5px 0;
 }             
 div.app-login form button.active{
     color:white;
     background: #ffba33;
 }                                        
</style>