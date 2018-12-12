<template>
   <div class="app_swiper">
       <mt-swipe :auto="3000">
           <mt-swipe-item v-for="item in imageList" :key="item.cid">
               <img :src="item.img" alt="">
           </mt-swipe-item>
       </mt-swipe>
   </div>
</template>
<script>
    export default{
        data(){ return {}},
        props:["imageList"],
    }
</script>
<style>
   div.app_swiper .mint-swipe .mint-swipe-items-wrap{
        width:100%;
        height:200px;
    } 
    div.app_swiper .mint-swipe img{
        width:100%;
        height:200px;
    }
</style>