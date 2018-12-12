<template>
        <nav class="mui-bar mui-bar-tab">
                <router-link class="mui-tab-item " href="#tabbar" to='/home' :class="path=='home'?'mui-active':''">
                  <span class="mui-icon mui-icon-home"></span>
                  <span class="mui-tab-label">首页</span>
                </router-link>
                <router-link class="mui-tab-item" href="#tabbar-with-map" to="/goal" :class="path=='goal'?'mui-active':''">
                  <span class="mui-icon mui-icon-map"></span>
                  <span class="mui-tab-label">目的地</span>
                </router-link>
                <router-link class="mui-tab-item" href="#tabbar-with-map" to="/mak" :class="path=='mak'?'mui-active':''">
                  <span class="mui-icon mui-icon-extra mui-icon-extra-holiday"></span>
                  <span class="mui-tab-label">旅行商城</span>
                </router-link>
                <router-link class="mui-tab-item" href="#tabbar-with-contact" to="/set"  :class="path=='set'?'mui-active':''">
                  <span class="mui-icon mui-icon-contact"></span>
                  <span class="mui-tab-label">我的</span>
                </router-link>
        </nav>
</template>
<script>
    export default{
        data(){
            return{
                path:''
            }
        },
        created(){
           this.path=this.$route.name
        },
        watch:{
            $route(to,from){
                this.path=to.name
            }
        }
    }
</script>
<style>
 nav.mui-bar-tab a.mui-tab-item.mui-active {
    color: #f60;
  }
</style>