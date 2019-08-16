<template>
    <div class="login">
        <div class="login_header">
            <a href="http://www.cnki.net/">
                <img src="../assets/login/logo.jpg" alt="">
            </a>
            <p></p>
        </div>
        <div class="login_container">
            <div class="login_right">
                <div>
                    <p>
                        <span>会员登录</span>
                        <router-link to="Registe" class="registe">立即注册</router-link>
                    </p>
                    <div class="login_msg">{{login_msg}}</div>
                    <input type="text" v-model="uname" class="uname" placeholder="用户名/邮箱/手机号">
                    <input type="password" v-model="upwd" class="upwd" placeholder="密码">
                    <p class="checkb">
                        <span>
                            <input type="checkbox" v-model='ismemory' id="ismemory"><label for="ismemory">下次自动登录</label>
                        </span>
                        <span>忘记账号或密码?</span>
                    </p>
                    <div class="btn">
                        <a href="javascript:;" class="btn1" @click="login">登&nbsp;录</a>
                        <a href="javascript:;" class="btn2" @click='iplogin'>IP登&nbsp;录</a>
                    </div>
                    <div class="line"></div>
                    <div class="other">
                        <a href="https://graph.qq.com/oauth2.0/show?which=Login&display=pc&client_id=100243320&response_type=code&state=4c847792b2124c5eb5ff8e813288bf2b&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback" class="qq">QQ账号</a>
                        <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wx47325c072115e236&response_type=code&state=ef7e7223f5694b59ae923c5c6eee415d&scope=snsapi_login&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback" class="wx">微信账号</a>
                        <a href="http://reg.163.com/open/oauth2/authorize.do?client_id=4777946994&response_type=code&state=f729deef7df84cc28c024e02bbceb90a&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback" class="wy">网易账号</a>
                        <a href="https://api.weibo.com/oauth2/authorize?client_id=3298416833&response_type=code&state=799fe034815c4e069f4f34510e9c698b&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback" class="wbo">新浪微博</a>
                    </div>
                </div>
            </div>
        </div>
        <reg-foot></reg-foot>
    </div>
</template>
<script>
import RegFoot from './RegFoot.vue'
const Base64 = require('js-base64').Base64
export default {
    data(){
        return {
            uname:'',
            upwd:'',
            ismemory:false,
            login_msg:''
        }
    },
    components:{
        'reg-foot':RegFoot
    },
    methods: {
        login(){
            var uname=this.uname;
            var upwd=this.upwd;
            if(!uname || !upwd){
                this.login_msg='请输入用户名或者密码';
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
                        var uid=result.data.data[0].uid
                        sessionStorage.setItem("uid",uid);
                        //cookie
                        var uname=this.uname;
                        if(this.ismemory){
                            this.setCookie('uname',uname,7);
                            //密码加密存储
                            var upwd = Base64.encode(this.upwd);
                            this.setCookie("upwd",upwd,7);
                        }
                        //清空cookie
                        this.$confirm('登录成功，是否跳转首页?', '', {
                            confirmButtonText: '确定',
                            cancelButtonText: '取消',
                            type: 'suceess'
                        }).then(() => {
                            this.$router.push("/");
                        }).catch(() => {  });
                    }else{
                        this.login_msg="登录失败，系统没有此用户名或用户密码错误。请您注意区分大小写,重新输入正确的用户名和密码登录！"
                    }
                })
                
            }
        },
        iplogin(){
            this.login_msg="您的IP不在允许范围内!";
        }
    },
    created() {
        if(document.cookie.length > 0){
            var uname=this.getCookie("uname");
            var upwd=Base64.decode(this.getCookie("upwd"));
            this.uname=uname;
            this.upwd=upwd;
        }
    },
}
</script>
<style scoped>
.login .login_header{
    width: 910px;
    margin: 0 auto;
    height: 74px;
    padding-top: 20px;
    display: flex;
    justify-content: space-between;
}
.login .login_header p{
    width: 393px;
    height: 74px;
    background: url(../assets/login/tit.jpg) no-repeat
}
.login .login_container{
    height: 525px;
    background:url(../assets/login/bannerbg.jpg) no-repeat top center;  
}
div.login_right{
    width: 910px;
    margin: 0 auto;
    position: relative;
}
.login_right>div{
    background: #fff;
    width: 312px;
    padding: 18px 23px 20px;
    position: absolute;
    top: 40px;
    right: 0px;
}
.login .login_container .registe{
    font-size: 14px;
    font-family: "宋体";
    color: #cc0000;
}
.login .login_container .login_right>div p:first-child{
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
}
.login .login_container .login_right>div p:first-child span{
    height: 24px;
    font-family: "Microsoft YaHei";
    font-size: 20px;
    color: #474747
}
.uname,.upwd{
    height: 40px;
    width: 100%;
    line-height: 40px;
    padding: 11px 0 11px 40px;
    border: 1px solid #D4D4D4;
    box-sizing: border-box;
}
.login_msg{
    height: 30px;
    margin-top: 5px;
    color: #CC0000;
    font-size: 12px;
    text-align: left;
}
.uname{
    background: url(../assets/login/name.gif) no-repeat;
}
.upwd{
    background: url(../assets/login/psw.gif) no-repeat;
    margin: 20px 0;
}
.checkb{
    color: #666;
    font-size: 12px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.login{
    font-family: '宋体'
}
.btn{
    display: flex;
    justify-content: space-between;
    margin: 20px 0;
}
.btn .btn1,.btn .btn2{
    color: #fff;
    width: 150px;
    height: 40px;
    font-size: 18px;
    text-align: center;
    line-height: 40px;
}
.btn .btn1{
    background: #29B1E5;
}
.btn .btn2{
    background: #CC0000;
}
.line{
    height: 11px;
    background: url(../assets/login/qita.jpg) no-repeat center;
    margin-bottom: 12px;
}
.other{
    display: flex;
    justify-content: space-between;
}
.other a{
    width: 68px;
    padding-top: 65px;
    text-align: center;
    color: #797979;
    font-size: 12px;
}
a.qq{
    background: url(../assets/login/qq.gif) no-repeat center 8px;
}
a.wx{
    background: url(../assets/login/wx.gif) no-repeat center 8px;
}
a.wy{
    background: url(../assets/login/wy.gif) no-repeat center 8px;
}
a.wbo{
    background: url(../assets/login/weibo.gif) no-repeat center 8px;
}
</style>