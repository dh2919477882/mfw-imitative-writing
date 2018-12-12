const express=require("express");
const cors=require("cors");
const bodyParse=require("body-parser")
const index=require("./routes/index")
const goal=require('./routes/goal')
const mak=require('./routes/maket')
const user=require("./routes/user")

var app=express();
var server=app.listen(3030);

//使用bodyParse中间件
app.use(bodyParse.urlencoded({extended:true}))

//配置允许哪个程序哪个端口访问
app.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))


//托管静态资源到public下
app.use(express.static(__dirname+"/public"))

app.use("/index",index);
app.use("/goal",goal);
app.use("/mak",mak);
app.use("/user",user)