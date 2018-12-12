<template>
    <div class="app-goal">
        <toubu></toubu>
        <swiper :imageList="imagelist"></swiper>
        <div class="goal2" v-for="item of list" :key="item.fid">
                <div class="header">
                    <h4>{{item.title}}</h4>
                    <p>{{item.subtitle}}</p>
                </div>
                <div class="navbar">
                    <ul>
                        <li  v-for="(tmp,index) of item.nav" :key="tmp.lid" @click="handlerClick"><a v-bind:class='index==0?"active":""' :data-set='tmp.lid'>{{tmp.place}}</a></li>
                    </ul> 
                </div>
                <div class="body">
                    <ul class="bodyer" v-for="(tmp,index) of item.nav" :key="tmp.lid" :class="index==0?'show':'hide'" :data-toggle="tmp.lid">
                        <li v-for="i of tmp.img" :key="i.gid">
                            <a>
                                <img :src="i.img" alt="">
                                <p>{{i.city}}</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer">
                    <a href="#">{{item.button}}</a>
                </div>
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
               imagelist:[],
               list:''
           }
       },
       methods:{
           getImage(){
               var url="http://127.0.0.1:3030/goal/image2"
               this.axios.get(url).then(res=>{
                   this.imagelist=res.data
               })
           }, 
                getInfo(){
                    var url='http://127.0.0.1:3030/goal/info'
                    this.axios.get(url).then(res=>{
                        this.list=res.data.info 
                    for(var i=0;i<this.list.length;i++){
                                    this.list[i].nav=[]
                        for(var j=0;j<res.data.nav.length;j++){
                            if(res.data.nav[j].fid==(i+1)){
                            this.list[i].nav.push(res.data.nav[j])
                        }
                        } 
                    }
                    for(var i=0;i<this.list.length;i++){
                    for(var j=0;j<this.list[i].nav.length;j++){
                        this.list[i].nav[j].img=[]
                        for(var k=0;k<res.data.img.length;k++){
                            if(res.data.img[k].lid==this.list[i].nav[j].lid){
                            this.list[i].nav[j].img.push(res.data.img[k])
                            }
                        }
                        }
                    }
                    })
                },
                handlerClick(e){
                     var a=e.target
                     var lid=a.getAttribute('data-set')
                     var ul=a.parentNode.parentNode
                     var attr=ul.childNodes
                     for(var i=0;i<attr.length;i++){
                         if(attr[i].childNodes[0].getAttribute("class")=='active'){
                             attr[i].childNodes[0].setAttribute("class","")
                         }
                     }
                     a.setAttribute("class","active")
                     var divImg=ul.parentNode.nextElementSibling.childNodes
                     for(var i=0;i<divImg.length;i++){
                         if(divImg[i].getAttribute('data-toggle')==lid){
                             divImg[i].setAttribute('class','bodyer show')
                         }else{
                             divImg[i].setAttribute('class','bodyer hide')
                         }
                     }

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
    div.app-goal div.goal2 div.header{
        width:350px;
        height:90px;
        display:flex;
        flex-direction:column;
        justify-content:center;
        margin:0 auto;
        align-items:center;
       border-bottom:1px solid #ddd;
    }
    div.app-goal div.goal2 div.header h4{
        font-weight:normal;
    } 
    div.app-goal div.goal2 div.navbar{
        width:375px;
        height:50px;
        overflow-x: scroll;
    }
    div.app-goal div.goal2 div.navbar ul{
        margin:0;
        padding:0;
        width:600px;
        display:flex;
    }
    div.app-goal div.goal2 div.navbar ul li{
        list-style:none;
         width:5rem;
         text-align:center;
         margin:10px 0;
         border-right:1px solid #ddd;
    } 
    div.app-goal div.goal2 div.navbar ul li a.active{
        color:#f60;
        border-bottom:2px solid #f60;
    }
    div.app-goal div.goal2 div.navbar ul li a{
        color:#696969;
        font-size:16px;
        padding:10px 0;
    }
    div.app-goal div.goal2 ul.bodyer{
        display:flex;
        flex-wrap:wrap;
        margin:10px 0;
        padding:0;
    }
    div.app-goal div.goal2 ul.bodyer li{
        list-style:none;
        width:33%;
        text-align:center;
        margin:5px 0;
    }
    div.app-goal div.goal2 ul.bodyer li a img{
        width:100px;
        height:85px;
    }
    div.app-goal div.goal2 ul.bodyer li a p{
       color:black;
    }
    div.app-goal div.goal2 div.footer{
        height:80px;
        border-bottom:1px solid #ddd;
        line-height:80px;
        text-align:center;
    }
    div.app-goal div.goal2 div.footer a{
        color:#f60;
        padding:10px 25px;
        border:1px solid #f60;
        border-radius:5px;
    }
    div.app-goal div.goal2 div.body{
        position:relative;
        height:262px;
    }
    div.app-goal div.goal2 div.body ul.bodyer{
        position:absolute;
        top:0;
        left:0;
    }
    .hide{
        opacity:0;
    }
    .show{
        opacity:1;
    }
</style>