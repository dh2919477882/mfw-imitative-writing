const express=require("express")
const pool=require("../pool")
const router=express.Router()

router.get("/image",(req,res)=>{
    pool.query("select * from mfw_carousel3",(err,result)=>{
        if(err) throw err;
        res.writeHead(200)
        res.write(JSON.stringify(result))
        res.end()
    })
})

router.get("/info",(req,res)=>{
    pool.query("select * from mfw_travel",(err,result)=>{
        if(err) throw err;
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8"
        })
        res.write(JSON.stringify(result))
        res.end()
    })
})


module.exports=router