<template>
    <div class="app-mak">
        <toubu></toubu>
        <swiper :imageList=list></swiper>
        <div class="line">&gt;&nbsp;旅游推荐&nbsp;&lt;</div>
        <div class="mui-row">
            <a class="mui-col-xs-6 mui-col-sm-6 box" v-for="tmp of infoList" :key="tmp.tid">
                    <div class="imageview">
                        <img :src="tmp.img">
                        <p><span>{{tmp.sp1}}</span><span>{{tmp.sp2}}</span></p>
                    </div>
                    <div class="title">{{tmp.title.length>16?tmp.title.slice(0,16)+"...":tmp.title}}</div>
                    <div class="price">￥{{tmp.price}}</div>
   
            </a>
        </div>
        <foot></foot>
    </div>
</template>
<script>
    import swiper from './tab/swiper.vue'
    import toubu from './tab/header.vue'
    import foot from './tab/footer.vue'
  export default{
      data(){
          return{
              list:[],
              infoList:[]
          }
      },
      methods:{
          getImage(){
              var url="http://127.0.0.1:3030/mak/image"
              this.axios.get(url).then(res=>{
                  this.list=res.data
              })
          },
          getInfo(){
              var url="http://127.0.0.1:3030/mak/info"
              this.axios.get(url).then(res=>{
                   this.infoList=res.data
              })
          }
      },
      created(){
          this.getImage()
          this.getInfo()
      },
      components:{
        swiper,
        toubu,
        foot
      },
  }
</script>
<style>
    div.line{
        width:100%;
        height:45px;
        line-height:45px;
        text-align:center;
        color:#999;
        font-size:16px;
    }
    div.app-mak div.mui-row a.mui-col-xs-6{
        width:46%;
        text-align: center;
        color:black;
        border:1px solid #ece6e6;
        margin:6px;
    }
  div.app-mak div.mui-row a div.imageview{
      position:relative;
  }
   div.app-mak div.mui-row a div.imageview img{
      width:170px;
      height:140px;
  } 
  div.app-mak div.mui-row a div.imageview p{
      position:absolute;
      top:0;
      left:0;
  }
  div.app-mak div.mui-row a div.imageview p span:nth-child(1){
      padding:2px 4px;
      background: #f60;
      color:white;
  }
  div.app-mak div.mui-row a div.imageview p span:nth-child(2){
    padding:1px 4px;
      background:white;
      color:#f60;
      border:1px solid #f60;
  }
  div.app-mak div.mui-row a div.title{
      padding:5px;
      height:50px;
  }
  div.app-mak div.mui-row a div.price{
      color:#f60;
      text-align: left;
      padding:5px 12px;
  }
</style>