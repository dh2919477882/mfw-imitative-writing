<template>
  <div class="app-reg">
    <div class="login">
                <img src="../../public/img/header/logo2.png">
    </div>
    <div class="reg">用户注册</div>
    <form action="">
        <input type="number" placeholder="请输入手机号" v-model='uphone'>
        <input type="password" placeholder="请输入6位密码" v-model='upwd'>
        <button class="btn1 active" type="button" @click="register">注册</button>
    </form>
  </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    export default{
        data(){ 
            return{
                uphone:'',
                upwd:''
            }
        },
        methods:{
            register(){
                var uphone=this.uphone;
                var upwd=this.upwd;
                var reg1=/^1[3578][0-9]{9}$/
                var reg2=/^[0-9A-Za-z]{6}$/
                if(!uphone){
                    Toast("手机号码不能为空")
                }else if(!upwd){
                    Toast("密码不能为空")
                }else if(!reg1.test(uphone)){
                    Toast("手机格式不正确")
                }else if(!reg2.test(upwd)){
                    Toast("密码为6位数字或字母组成")
                }else{
                    var url='http://127.0.0.1:3030/user/reg'
                    this.axios.post(url,`uphone=${uphone}&upwd=${upwd}`).then(res=>{
                        if(res.data.code==300){
                            Toast("该手机号已注册")
                        }else if(res.data.code==200){
                            Toast("注册成功，即将跳转登录页面")
                            setTimeout(()=>{
                                this.$router.push('/login')
                            },3000)
                        }else{
                            Toast("注册失败，请重新注册")
                        }
                    })
                }
            }
        }
    }
</script>
<style>
div.app-reg{
    height:665px;
}
 div.app-reg div.login img{
    width:100px;
    height:30px;
  }
  div.app-reg div.login{
    align-items: center;
    height:80px;
    display:flex;
    justify-content: center;
  }
  div.app-reg div.reg{
    text-align:center;
    padding:10px;
    border-top:2px solid #ffba33;
    color:#ffba33;
    background: #fafafa;
  }
  form{
      margin-top:35px;
      text-align: center;
  }
 div.app-reg  form input{
     width:95%;
     margin:0;
     height:45px;
 }
 div.app-reg  form input:focus{
     outline:1px solid #ffba33;
 }
 div.app-reg  form input[type=number]{
     border-bottom:none;
     border-radius:5px 5px 0 0;
 }
 div.app-reg  form input[type=password]{
     border-radius:0 0 5px 5px;
 }
 div.app-reg form button.btn1{
     width:95%;
     color: white;
     background:#ffba33;
     border:1px solid #ffba33;
     height:40px;
     border-radius:5px;
     font-size:18px;
     margin:50px 0;
 }  
</style>