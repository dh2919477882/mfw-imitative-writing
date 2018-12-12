<template>
    <div class="app-new">
        <div class="mui-navbar-inner mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav" @click="goback"></span>
            </button>
            <h1 class="mui-center mui-title">新闻资讯</h1>
         </div>  
         <div v-for="tmp of list" class="content">
            <div class="first"></div>
            <h3 class="title">{{tmp.title}}</h3>
            <img :src="tmp.img"></img>
            <p>{{tmp.subtext}}</p>
            <div class='text'>{{tmp.bigsub}}</div>
         </div>
         <div class="mui-row footer">
                <div class="mui-col-xs-3" @click='add'>
                    <a v-show='!iscoll'><span class="mui-icon-extra mui-icon-extra-heart"></span></a>
                    <a v-show='iscoll'><span class="mui-icon-extra mui-icon-extra-heart-filled"></span></a> 
                </div>
                <div class="mui-col-xs-3">
                    <a><span class="mui-icon-extra mui-icon-extra-like"></span></a> 
                </div>
                <div class="mui-col-xs-6">
                    <a href="#" @click="goset">我的窝</a>
                </div>
         </div>
    </div>
</template>
<script>
    import {Toast} from 'mint-ui'
    export default{
        data(){
            return{
                oldUrl:'',
		        id:0,
                list:[],
                iscoll:false,
                ischange:false
            } 
        },
        beforeRouteEnter (to, from, next){
            next(vm => {
            // 通过 `vm` 访问组件实例,将值传入oldUrl
            vm.oldUrl = from.path
            })
        },
        methods:{
            getInfo(){
                var url='http://127.0.0.1:3030/index/?nid='+this.id
                    this.axios.get(url).then(res=>{
                    this.list=res.data
		          })
            },
            goback(){
                this.$router.go(-1)
            },
            add(){
                if(localStorage.getItem("uid")){
                    if(this.iscoll){
                        this.iscoll=false
                        Toast('取消收藏')
                    }else{
                        this.iscoll=true
                        Toast('收藏成功     ')
                    }
                }else{
                    Toast("请先登录")
                }
            },
            goset(){
                this.$router.push('/set')
            }
        },
        created(){
            this.id=this.$route.params.id
            this.$store.state.showNav=false
            var uid=localStorage.getItem("uid")
            if(uid){
                var url='http://127.0.0.1:3030/user//iscoll?nid='+this.id+'&uid='+uid
                this.axios.get(url).then(res=>{
                    if(res.data.code==200){
                        this.iscoll=true
                        this.ischange=this.iscoll
                    }
                })
           }
        },
        mounted(){
            this.getInfo()
        },
        destroyed(){
            this.$store.state.showNav=true
            if(this.ischange==this.iscoll){
                return
            }else{
                var uid=localStorage.getItem("uid")
                var id=this.id
                if(this.iscoll){
                        var url='http://127.0.0.1:3030/user/add?nid='+id+'&uid='+uid
                        this.axios.get(url).then(res=>{
                               if(res.data.code==200){
                                   this.iscoll=true
                               }
                        })
                }else{
                    var url="http://127.0.0.1:3030/user/del?uid="+uid+"&nid="+id
                    this.axios.get(url).then(res=>{
                         if(res.data.code==200){
                             this.iscoll=false
                         }
                    })

                }
            }
        },
    }
   
</script>
<style>
  div.app-new div.mui-navbar-inner button span.mui-icon{
      color:#f60;
  }
  div.app-new div div.first{
    height:45px;
  }
  div.app-new div.content img{
   width:100%;
  }
  div.app-new div.content h3.title{
    padding:5px;
  }
  div.app-new div.content div.text{
     padding:10px;
  }
  div.app-new div.content p{
      padding:15px;
  }
  div.app-new div.footer{
      position:fixed;
      bottom: 0;
      left:0;
      width:100%;
      height:40px;
      background: #f7f7f7;
      line-height:40px;
  }
  div.app-new div.footer div{
      text-align:center;
  }
  div.app-new div.footer div a{
      color:#f60;
  }
  div.app-new div.footer div:nth-child(2) a{
      color:#8F8F94;
  }
  div.app-new div.footer div:nth-child(3){
      background:#f60;
  }
  div.app-new div.footer div:nth-child(3) a{
      color:white; 
  }
</style>