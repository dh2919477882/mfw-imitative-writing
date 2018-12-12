<template>
    <div class="app-myColl">
        <div class="first"></div>
        <div class="mui-navbar-inner mui-bar mui-bar-nav">
            <button type="button" class="mui-left mui-action-back mui-btn  mui-btn-link mui-btn-nav mui-pull-left">
                <span class="mui-icon mui-icon-left-nav" @click="goback"></span>
            </button>
            <h1 class="mui-center mui-title">我的收藏</h1>
        </div> 
        <div class="mui-card" v-for="tmp of list">
            <div class="mui-card-header">{{tmp.title}}</div>
            <div class="mui-card-content">
                <img :src="tmp.img" alt="" @click="getInfo(tmp.nid)">
                <p>{{tmp.subtext}}</p>
            </div>
            <div class="mui-card-footer">
                <a @click="remove(tmp.nid)"><span class="mui-icon mui-icon-trash"></span><span>删除</span></a>
            </div>
        </div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return {
                list:[]
            }
        },
        methods:{
            goback(){
                this.$router.go(-1)
            },
            remove(id){
                var uid=localStorage.getItem("uid")
                var url="http://127.0.0.1:3030/user/del?uid="+uid+"&nid="+id
                this.axios.get(url).then(res=>{
                    if(res.data.code==200){
                       for(var i=0;i<this.list.length;i++){
                           if(id==this.list[i].nid){
                               this.list.splice(i,1)
                           }
                       }
                       Toast("删除成功")
                    }
                })
            },
            getInfo(id){
                this.$router.push('/home/new/'+id)
            }
        },
        created(){
            var url="http://127.0.0.1:3030/user/total?uid="+localStorage.getItem("uid")
            this.axios.get(url).then(res=>{
                this.list=res.data
            })
        }
    }
</script>
<style>
    div.first{
        height:45px;
    }
div.app-myColl div.mui-bar button.mui-left span{
    color:#f60;
}
div.app-myColl div.mui-card div.mui-card-footer{
    position: relative;
}
div.app-myColl div.mui-card div.mui-card-footer a{
    color:#f60;
    font-size:20px;
    position: absolute;
    right:20px;
}
div.app-myColl div.mui-card div.mui-card-content img{
    width:100%;
}
div.app-myColl div.mui-card div.mui-card-content p{
   padding:5px;
}
</style>