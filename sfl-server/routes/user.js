const express=require("express")
const pool=require("../pool")
const router=express.Router();

router.post("/signin",(req,res)=>{
    var uphone=req.body.uphone;
    var upwd=req.body.upwd;
    pool.query("select uid,uphone from mfw_user where uphone=? and upwd=?",[uphone,upwd],(err,result)=>{
        if(err) throw err;
        var obj={}
        if(result.length>0){
            obj={code:200,msg:result}
        }else{
            obj={code:201,msg:"uphone or upwd err"}
        }
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8"
        })
        res.write(JSON.stringify(obj))
        res.end()
    })
})

router.get('/add',(req,res)=>{
    var nid=req.query.nid
    var uid=req.query.uid
    var sql='INSERT INTO mfw_user_collec VALUES(?,?)'
    pool.query(sql,[uid,nid],(err,result)=>{
        if(err) throw err;
        var obj={}
        if(result.affectedRows>0){
             obj={code:200}
        }else{
            obj={code:201}
        }
        res.writeHead(200)
        res.write(JSON.stringify(obj))
        res.end()
    })
})

router.get("/del",(req,res)=>{
    var uid=req.query.uid
    var nid=req.query.nid
    var sql="delete from mfw_user_collec where uid=? and nid=?"
    pool.query(sql,[uid,nid],(err,result)=>{
        if(err) throw err;
        var obj={}
        if(result.affectedRows>0){
            obj={code:200,msg:'delete success'}
        }else{
            obj={code:201,msg:'delete err'}
        }
        res.writeHead(200)
        res.write(JSON.stringify(obj))
        res.end()
    })
})

router.get('/iscoll',(req,res)=>{
    var nid=req.query.nid
    var uid=req.query.uid
    pool.query("select * from  mfw_user_collec where nid=? and uid=?",[nid,uid],(err,result)=>{
        if(err) throw err;
        var obj={}
        if(result.length>0){
            obj={code:200,msg:'true'}
        }else{
            obj={code:201,msg:'false'}
        }
        res.writeHead(200)
        res.write(JSON.stringify(obj))
        res.end()
    })
})

router.get("/total",(req,res)=>{
    var uid=req.query.uid
    var sql="SELECT * FROM mfw_index_info WHERE mfw_index_info.nid=any(SELECT nid FROM mfw_user_collec where uid=?)"
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.writeHead(200)
            res.write(JSON.stringify(result))
            res.end()
        }
    })
})

router.post("/reg",(req,res)=>{
    var uphone=req.body.uphone
    var upwd=req.body.upwd;
    var obj={}
           pool.query('select uid from mfw_user where uphone=?',[uphone],(err,result)=>{
               if(err) throw err;
               if(result.length>0){
                   obj={code:300,msg:'uphone exist'}
                   res.writeHead(200);
                    res.write(JSON.stringify(obj))
                    res.end()
               }else{
                  pool.query('insert into mfw_user value(null,?,?)',[uphone,upwd],(err,result)=>{
                    if(err) throw err;
                    if(result.affectedRows>0){
                            obj={code:200,msg:'register success'}
                    }else{
                            obj={code:400,msg:'register err'}
                    }
                    res.writeHead(200);
                    res.write(JSON.stringify(obj))
                    res.end()
                  })
                }
            })
               
})

module.exports=router