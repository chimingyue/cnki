<template>
<div>
  <div class="nav">
      <div class="nav_left">
        <ul>
          <li v-show="!this.isLogin">
            <span>账号</span>
            <el-input v-model="uname"></el-input>
          </li>
          <li v-show="!this.isLogin">
              <span>密码</span>
              <el-input v-model="upwd" type="password"></el-input>
          </li>
          <li @click="login" v-show="!isLogin">
              <a href="javascript:;" class="login">登录</a>
          </li>
          <li>
            <router-link to="Registe" class="blue">个人注册</router-link>
          </li>
          <li>
            <a href="http://my.cnki.net/mycnki/RealName/FindPsd.aspx" class="blue">忘记密码</a>
          </li>
          <li>
            <a href="http://cajviewer.cnki.net/" class="blue">下载阅读器</a>
          </li>
          <li>
              <span>{{welcome}}</span>
              <a href="javascript:;" class="quit" @click="toquit">{{quit}}</a>
          </li>
        </ul>
      </div>
      <div class="nav_right">
          <el-menu :default-active="activeIndex"
          class="el-menu-demo"
          mode="horizontal"
          @select="handleSelect"
          background-color="#e9f0fd"
          text-color="#333"
          router
          >
              <el-menu-item index="1">知网首页</el-menu-item>
              <el-submenu index="2">
                <template slot="title" >移动阅读</template>
                <el-menu-item index="Mlaw">手机法典</el-menu-item>
                <el-menu-item index="CpzxIndex">移动普法机</el-menu-item>
              </el-submenu>
              <el-submenu index="3">
                <template slot="title">专题阅读</template>
                <el-menu-item index="3-1">法律期刊网</el-menu-item>
                <el-menu-item index="3-2">法律学位论文网</el-menu-item>
                <el-menu-item index="3-3">法律法规网</el-menu-item>
                <el-menu-item index="3-4">案列网</el-menu-item>
              </el-submenu>
              <el-submenu index="4">
                  <template slot="title">产品中心</template>
                  <el-menu-item index="CpzxIndex">数据中心</el-menu-item>
                  <el-menu-item index="CpzxHangye">行业知识服务平台</el-menu-item>
                  <el-menu-item index="CpzxIndex">智慧司法解决方案</el-menu-item>
                  <el-menu-item index="CpzxIndex">移动端产品</el-menu-item>
                  <el-menu-item index="CpzxIndex">典型案例</el-menu-item>
              </el-submenu>
              <el-menu-item index="5">企业快讯</el-menu-item>
            </el-menu>
      </div>
  </div>
  <div class="head_logo">
    <div class="head-content">
        <a href="http://law.cnki.net/" class="logo"></a>
        <div class="text">
            <h2>智慧型综合型</h2>
            <h2>法律知识服务系统</h2>
        </div>
        <div class="jiuban">
            <a href="http://law.cnki.net/old/">进入旧版</a>
        </div>
        <div class="text-carousel">
            <p class="text">本馆数据量</p>
            <el-carousel height="35px" direction="vertical" :autoplay="true" indicator-position="none">
              <el-carousel-item v-for="item in 3" :key="item">
                <h3 class="medium">
                  <p>字数 <span> 2.1亿 </span> ；年访问量 <span>4000万+</span> ； 年下载量 <span>1200万+</span></p>
                </h3>
              </el-carousel-item>
            </el-carousel>
        </div>
    </div>   
  </div>
</div>
</template>

<script>
export default {
  data() {
    return {
      uname:'',
      upwd:'',
      activeIndex: '1',
      welcome:'',
      quit:'',
      isLogin:false
    }
  },
  methods: {
    handleSelect(){

    },
    login(){
      var uname=this.uname;
      var upwd=this.upwd;
      if(!uname || !upwd){
          this.$message({
          showClose: true,
          message: '请输入登录名或者密码',
          type: 'error'
        });
        return;
      }else{
        var fileFormData=new URLSearchParams();
        fileFormData.append("uname",this.uname);
        fileFormData.append("upwd",this.upwd);
        var requestConfig={
            headers:{
                'Content-Type':'application/x-www-form-urlencoded'
            }
        }
        this.axios.post('login',fileFormData,requestConfig).then(result=>{
          if(result.data.code==1){
            this.welcome="欢迎登录！ ";
            this.quit="退出";
            this.isLogin=true;
            var uid=result.data.data[0].uid
            sessionStorage.setItem("uid",uid);
          }else{
            this.$message.error({
              message:'登录失败，系统没有此用户名或用户密码错误。请您注意区分大小写,重新输入正确的用户名和密码登录！',
              duration:1500
            })
          }
        })
      }
    },
    toquit(){
      this.$confirm('确定退出吗?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          if(document.cookie.length > 0){
            sessionStorage.removeItem("uid");
            this.isLogin=false;
            this.welcome="";
            this.quit="";
          }
          
        }).catch(() => { });
    },
    mlaw(){
      this.$router.push("/Mlaw");
    }
  },
  created() {
    if(document.cookie.length > 0){
        var uname=this.getCookie("uname");
        var upwd=Base64.decode(this.getCookie("upwd"));
        this.uname=uname;
        this.upwd=upwd;
    }
    if(!sessionStorage.getItem("uid")){
      this.isLogin=false;
    }else{
      this.isLogin=true;
      this.welcome="欢迎登录！ ";
      this.quit="退出"
    }
  },
}
</script>
<style scoped>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
.nav{
  width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items:center;
}
.nav li{
  list-style: none;
}
.nav_left{
  width:45%;
}
.nav .nav_left ul{
  padding: 0;
  display: flex;
  justify-content: space-between;
  align-items:center;
}
.nav .nav_left{
  font-size: 14px;
}
.nav .nav_left .login{
  color: #333;
  display: block;
  width: 60px;
  height: 25px;
  line-height: 25px;
  cursor: pointer;
  border-width: 0;
  background-color: #e9f0fd;
  border-radius: 5px;
  text-align: center;
  margin-left:5px;
}
.nav .nav_left a.login:hover{
  color:#fff;
  background-color: #1b66e6;
}
.nav .nav_left a.blue{
  display: block;
  font-size: 12px;
  margin-left: 5px;
  width: 70px;
  height: 25px;
  line-height: 25px;
  cursor: pointer;
  border-width: 0;
  color: #1b66e6;
  text-align: center;
}
.quit{
  color: #1b66e6;
  background-color: #e9f0fd;
}
.nav .nav_left a.blue:hover{
  background-color: #e9f0fd;
}
.head_logo{
  width: 100%;
  height:250px;
  background:url(../assets/header/header.jpg) no-repeat center;
  background-size:cover;
  text-align: center;
}
.head_logo .head-content{
  width: 1200px;
  height:50%;
  margin: 10px auto;
}
.logo{
  float: left;
  width:200px;
  height: 75px;
  background: url(../assets/header/logo.png) no-repeat center;
  margin:5px 20px 0 0;
}
.head_logo h2{
  color: #fff;
  font-size: 20px;
  margin: 0;
  font-weight: normal;
  margin-bottom:5px;
}
.head_logo .head-content div.text{
  height: 60px;
  float: left;
  padding: 0px 0 0 25px;
  margin-top:15px;
  text-align: left;
  border-left: solid #fff 1px;
}
.jiuban{
  text-align: right;
  padding-top:20px;
}
.jiuban a{
  color:#fff;
  font-size:14px;
}
.text-carousel{
  display: flex;
  clear: both;
  width: 530px;
  height: 40px;
  line-height: 40px;
  float: right;
  color: #c7dcff;
  border-radius: 20px;
  background-color: #0943a8;
  padding-left: 30px;
  margin: 15px 0;
}
.text-carousel p{
  font-size: 14px;
  color: #c7dcff;
  text-align: left;
  font-weight: normal;
}
.text-carousel p.text{
  padding-right: 30px;
}
.text-carousel span{
  color: #fff;
}
</style>