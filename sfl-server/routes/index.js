const express=require("express");
const pool=require("../pool");
const router=express.Router();


router.get("/image1",(req,res)=>{
    var sql="select * from mfw_carousel1"
     pool.query(sql,(err,result)=>{
         if(err) throw err;
         res.writeHead(200);
         res.write(JSON.stringify(result));
         res.end();
     })
})

router.get("/",(req,res)=>{
    var nid=req.query.nid
    pool.query("select * from mfw_index_info where nid=?",[nid],(err,result)=>{
        if(err) throw err;
        res.writeHead(200)
        res.write(JSON.stringify(result))
        res.end()
    })
})

router.get("/search",(req,res)=>{
    var msg=decodeURI(req.query.msg);
	   var attr=msg.split(" ")
	for(var i=0;i<attr.length;i++){
	     attr[i]="title like N'%"+attr[i]+"%'"  
	 }
	var content=attr.join(" and ")
	var sql='select * from mfw_index_info where '+content
	pool.query(sql,(err,result)=>{
	    if(err) throw err;
		var obj={}
		if(result.length>0){
		   obj={code:200,data:result}
		}else{
		   obj={code:201,data:'没有相关数据'}
		}
		res.writeHead(200)
	    res.write(JSON.stringify(obj))
		res.end()
	})
	
})

router.get("/info",(req,res)=>{
    var pno=req.query.pno
    var sql="select * from mfw_index_info"
    var obj={
        pno,
        pageSize:5 
    }
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.pageCount=result.length 
        obj.pageage=Math.ceil(obj.pageCount/obj.pageSize)
        obj.data=result.slice(obj.pageSize*pno,obj.pageSize*(parseInt(pno)+1))
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8"
        })
        res.write(JSON.stringify(obj))
        res.end()
    })
})

module.exports=router;