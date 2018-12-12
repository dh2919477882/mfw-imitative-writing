const express=require('express')
const pool=require('../pool')
const router=express.Router()

router.get("/image2",(req,res)=>{
    pool.query('select * from mfw_carousel2',(err,result)=>{
        if(err) throw err;
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8"
        })
        res.write(JSON.stringify(result))
        res.end()
    })
})

router.get("/info",(req,res)=>{
    var laptop={
        info:{},
        nav:[],
        img:[]
    };
    Promise.all([
        new Promise(function(open){
            pool.query('select * from mfw_goal_family',(err,result)=>{
                if(err) throw err;
                 laptop.info=result;
                open();
            })
       }),
       new Promise(function(open){
           pool.query('select fid,lid,place from mfw_goal_lid',(err,result)=>{
           
               if(err) throw err;
                laptop.nav=result
                
                open()
           }) 
       }),
       new Promise(function(open){
            pool.query('select gid,lid,img,city from mfw_goal_img',(err,result)=>{
                if(err) throw err;
                laptop.img=result
                open()
            })
       })
    ]).then(function(){
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8"
        })
        res.write(JSON.stringify(laptop))
        res.end()
    })
})
module.exports=router