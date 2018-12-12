<template>
<div class="app-home">
    <toubu></toubu>
     <swiper :imageList="imageList"></swiper>
     <div class="mui-content">
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/goal">
                    <i></i>
                    <div class="mui-media-body">找攻略</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">看游记</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">问达人</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">结伴</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">酒店</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/mak">
                    <i></i>
                    <div class="mui-media-body">旅行商城</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">机票</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <i></i>
                    <div class="mui-media-body">当地玩乐</div></a></li>
        </ul> 
    </div>
    <div class="line">&gt;&nbsp;推荐攻略&nbsp;&lt;</div>
    <ul class="newbox">
        <li class="newItem" v-for="item of newList" :key="item.nid" @click="newInfo(item.nid)">
            <div class="newTitle">{{item.title.length>14?item.title.slice(0,15)+'...':item.title}}</div>
            <a>
                <img :src="item.img">
                <div>
                    {{item.subtext.length>40?item.subtext.slice(0,40)+'...':item.subtext}}
                </div>
            </a>
        </li>
    </ul>
    <div class="add" @click="getInfo">点击加载更多攻略...</div>
    <foot></foot>
</div>
</template>
<script>
  import swiper from "./tab/swiper.vue"
  import {Toast} from 'mint-ui'
  import toubu from './tab/header.vue'
    import foot from './tab/footer.vue'
  export default{
      data(){ return {
          imageList:[],
          newList:[],
          pno:0,
          pageage:0,
          hasMore:true
      }},
      methods:{
          getImage(){
              this.axios.get("http://127.0.0.1:3030/index/image1").then(res=>{
                  this.imageList=res.data
              })
          },
          getInfo(){
            if(this.hasMore){
            var url=`http://127.0.0.1:3030/index/info?pno=${this.pno}`
            this.axios.get(url).then(res=>{
                this.pageage=res.data.pageage
                var row=this.newList.concat(res.data.data)
                this.newList=row
                this.pno++
                this.hasMore=this.pno<this.pageage?true:false
            })
            }else{
                var btn=document.querySelector(".add")
                btn.style.display="none"
                Toast("没有更多攻略了")
            }
          },
          newInfo(id){
              this.$router.push("/home/new/"+id)
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
      }
  }
</script>
<style>
    div.mui-content ul.mui-table-view{
        width:375px;
        background: white;
        border:none;
    }
    div.mui-content ul.mui-table-view li.mui-table-view-cell{
        width:25%;
        height:100px;
        border:none;
    }
    div.mui-content ul.mui-table-view li i{
        display:block;
        background:url(../../public/img/index/i_nav3.png) no-repeat;
        width:50px;
        height:50px;
        background-size:13rem;
        margin-left:8px;
    }
    div.mui-content ul.mui-table-view li:nth-child(1) i{
        background-position:0 0;
    }
    div.mui-content ul.mui-table-view li:nth-child(1) div.mui-media-body{
        color:#ff9d00;
    }
    div.mui-content ul.mui-table-view li:nth-child(2) i{
        background-position:0 -3.25rem;
    }
    div.mui-content ul.mui-table-view li:nth-child(2) div.mui-media-body{
        color:#feca2b;
    }
    div.mui-content ul.mui-table-view li:nth-child(3) i{
        background-position:-6.45rem -3.25rem;
    }
    div.mui-content ul.mui-table-view li:nth-child(3) div.mui-media-body{
        color:#42d6ba;
    }
    div.mui-content ul.mui-table-view li:nth-child(4) i{
        background-position:-3.25rem -3.25rem;
    }
    div.mui-content ul.mui-table-view li:nth-child(4) div.mui-media-body{
        color:#f94a87;
    }
    div.mui-content ul.mui-table-view li:nth-child(5) i{
        background-position:-3.25rem 0;
    }
    div.mui-content ul.mui-table-view li:nth-child(5) div.mui-media-body{
        color:#32a2f1;
    }
    div.mui-content ul.mui-table-view li:nth-child(6) i{
        background-position:-6.45rem 0;
    }
    div.mui-content ul.mui-table-view li:nth-child(6) div.mui-media-body{
        color:#fd4e4e;
    }
    div.mui-content ul.mui-table-view li:nth-child(7) i{
        background-position:-9.65rem 0;
    }
    div.mui-content ul.mui-table-view li:nth-child(7) div.mui-media-body{
        color:#acce0e;
    }
    div.mui-content ul.mui-table-view li:nth-child(8) i{
        background-position:-9.65rem -3.25rem;
    }
    div.mui-content ul.mui-table-view li:nth-child(8) div.mui-media-body{
        color:#b160df;
    }
    div.app-home div.line{
        width:100%;
        height:30px;
        line-height:30px;
        text-align:center;
        background:#f8f8f8;
        color:#999;
        font-size:14px;
    }
   
    div.app-home ul.newbox{
        padding:0;
        margin:0;
    }
    div.app-home ul.newbox li.newItem{
        margin:10px 15px;
        padding-bottom:10px;
        list-style:none;
        border-bottom:1px solid #d8d6d6;
    }
    div.app-home ul.newbox li.newItem div.newTitle{
        height:45px;
        font-size:20px;
        line-height:45px;
    }
    div.app-home ul.newbox li.newItem a{
        display:flex;
        
    }
    div.app-home ul.newbox li.newItem a img{
        width:130px;
        height:90px;
        max-width:150px; 
    }
    div.app-home ul.newbox li.newItem a div{
        padding:5px;
        height:90px;
        width:200px;
        color:#999;
        font-size:14px;
    }
    div.app-home div.add{
        margin:5px auto;
        border:1px solid #f60;
        color:#f60;
        padding:5px 20px;
        width:200px;
        border-radius:10px;
        text-align:center;
        display: block;
    }
</style>