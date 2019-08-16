//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser=require('body-parser');
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"cnki",
   connectionLimit:15
 })
 
 var server = express();
 server.use(express.static('public'));
 //使用body-parser中间件，将post请求的数据格式化为对象
 server.use(bodyParser.urlencoded({
  extended:false
}));
//2.2:跨域
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 server.listen(3000);

//首页资源推荐
server.get("/source",(req,res)=>{
  var sql="SELECT * FROM source";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,data:result});
   }else{
     res.send({code:-1,msg:"注册失败"});
   }
  });
});

//登录
server.post("/login",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  if(!uname){
      res.send({code:-1,msg:"用户名不能为空"});
      return;
    }
    if(!upwd){
      res.send({code:-1,msg:"密码不能为空"});
      return;
    }
  var sql="SELECT * FROM user WHERE uname=? AND upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:-1,msg:"用户名或密码有误"});
   }else{
    req.session.uid=result[0].uid;
    res.send({code:1,data:result});
   }
  })
});

//注册--用户名
server.get("/uname",(req,res)=>{
  var uname=req.query.uname;
  if(!uname){
    res.send({code:0,msg:'用户名不能为空'});
    return;
  }
  var sql='SELECT uid FROM user WHERE uname=?';
  pool.query(sql,[uname],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      res.send({code:1,msg:'用户名可以使用'});
    }else{
      res.send({code:-1,msg:'该用户名已存在，请重新输入'});
    }
  })
})

//注册
server.post('/registe',(req,res)=>{
  var obj=req.body;
  var uname=obj.uname;
  var upwd=obj.upwd;
  var email=obj.email;
  if(!uname){
    res.send({code:0});
    return ;
  }
  if(!upwd){
    res.send({code:0});
    return ;
  }
  if(!email){
    res.send({code:0});
    return ;
  }
  var sql='INSERT INTO user SET ?';
  pool.query(sql,[obj],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"注册成功"});
    }else{
      res.send({code:-1,msg:"注册失败"});
    }
  })
})
