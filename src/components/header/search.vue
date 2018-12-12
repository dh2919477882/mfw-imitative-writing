<template>
 <div class="app-search">
   <toubu></toubu>
   <ul class="mui-table-view" v-show="isContent">
    <li class="mui-table-view-cell mui-media" v-for="tmp of myList">
        <a @click="handleClick(tmp.nid)">
            <img class="mui-media-object mui-pull-left" :src="tmp.img">
            <div class="mui-media-body">
                {{tmp.title.length>11?tmp.title.slice(0,11)+'...':tmp.title}}
                <p class='mui-ellipsis'>{{tmp.subtext}}</p>
            </div>
        </a>
    </li>
   </ul>
   <h3 v-show="!isContent" class="nomsg">没有相关内容，换个词搜搜看</h3>

 </div>
</template>
<script>
  import toubu from '../tab/header.vue'
  import Bus from '../../bus.js'
   export default{
      data(){
         return {
            myList:[],
            isContent:false
	       }
      },
      methods:{
        handleClick(id){
            this.$router.push('/home/new/'+id)
        }
      },
      mounted(){
         var vm=this
         Bus.$on('val',(data)=>{
             vm.myList=data
             if(data.length>0){
               vm.isContent=true
             }else{
               vm.isContent=false
             }
         })
      },
      components:{
        toubu
      }
   }
</script>
<style>
  div.app-search{
    height:665px;
  }
  div.app-search h3.nomsg{
    
    text-align:center;
    line-height:502px;
  }
</style>