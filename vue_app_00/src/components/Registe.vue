<template>
    <div class="registe">
        <div class="topban">
            <div>
                你好，欢迎来到中国知网！
                <router-link to="Login" class="danger">登录</router-link>
                <span>|</span>
                <router-link to="Registe" class="danger">注册</router-link>
            </div>
            <div>
                <a href="http://zhifu.cnki.net/">支付中心</a>
                <span>|</span>
                <a href="http://vipcard.cnki.net/ec/skwd/skwd.htm">购买会员卡</a>
            </div>
        </div>
        <div class="container_registe">
            <div class="header">
                <a href="http://www.cnki.net/"></a>
                <router-link to="Login"><span>已有账号，</span>立即登录>></router-link>
            </div>
            <div class="registe_box">
                <div class="box_left">
                    <p>会员注册</p>
                    用户名：<input type="text" v-model="uname" placeholder="可使用常用邮箱做用户名" @click="uname_input">
                    <p class="uname_msg">{{uname_msg}}</p>
                    &nbsp;密码：<input type="password" v-model="upwd"  @click="upwd_input" class="upwd">
                    <p class="upwd_msg">{{upwd_msg}}</p>
                    &nbsp;邮箱：<input type="text" v-model="email"  @click="email_input" class="email">
                    <p class="upwd_msg">{{email_msg}}</p>
                    验证码：<input id="code" @blur="verify()" type="text" v-model="yanzhengma"  @click="yanzhengma_input" class="yanzhengma" placeholder="区分大小写">
                    <!--验证码-->
                    <a href="javascript:;"  @click="refreshCode" class="mycanvas">
                        <identify :identifyCode="identifyCode"></identify>
                    </a>
                    <p class="upwd_msg" id='yanzhengma'>{{yanzhengma_msg}}</p>
                    <input type="button" value="立即注册" @click="registe" class="toregiste">
                    <p class="lastp">
                        <input type="checkbox" v-model="tongyi" @change="changetongyi">
                        <label >我已看过并同意 <a href="http://my.cnki.net/elibregister/NRegisterStruction.htm">中国知网使用协议、隐私政策</a></label>
                        <p class="tongyi_msg">{{tongyi_msg}}</p>
                    </p>
                </div>
                <div class="box_right">
                    <p>使用合作网站账号快速登录</p>
                    <div>
                        <div>
                            <a href="https://graph.qq.com/oauth2.0/show?which=Login&display=pc&client_id=100243320&response_type=code&state=53c0375102ab450485b99be7271e4f02&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback"><img src="../assets/registe/register5-icon1.jpg" alt=""></a>
                            <a href="https://graph.qq.com/oauth2.0/show?which=Login&display=pc&client_id=100243320&response_type=code&state=65a2bce827ef4b4fac5df7c94106cc1c&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback">QQ账号</a>
                        </div>
                        <div>
                            <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wx47325c072115e236&response_type=code&state=30779e942d5c4081a3b551427240866a&scope=snsapi_login&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback"><img src="../assets/registe/register5-icon2.jpg" alt=""></a>
                            <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wx47325c072115e236&response_type=code&state=30779e942d5c4081a3b551427240866a&scope=snsapi_login&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback">微信账号</a>
                        </div>
                        <div>
                            <a href="http://reg.163.com/open/oauth2/authorize.do?client_id=4777946994&response_type=code&state=dc36b1a17a3046e291b5ba996f3be79b&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback"><img src="../assets/registe/register5-icon3.jpg" alt=""></a>
                            <a href="http://reg.163.com/open/oauth2/authorize.do?client_id=4777946994&response_type=code&state=dc36b1a17a3046e291b5ba996f3be79b&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback">网易账号</a>
                        </div>
                        <div>
                            <a href="https://api.weibo.com/oauth2/authorize?client_id=3298416833&response_type=code&state=142a1290468c42e384cbed681ab3e947&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback"><img src="../assets/registe/register5-icon4.jpg" alt=""></a>
                            <a href="https://api.weibo.com/oauth2/authorize?client_id=3298416833&response_type=code&state=142a1290468c42e384cbed681ab3e947&redirect_uri=http://my.cnki.net/ThirdLogin/login/callback">新浪微博</a>
                        </div>
                    </div>
                    <div>
                        <a href="http://elib.cnki.net/Grid2008/" class="create">创建机构数字图书馆>></a>
                    </div>
                </div>
            </div>
            <reg-foot></reg-foot>
        </div>
    </div>
</template>
<script>
import RegFoot from './RegFoot.vue'
import Identify from './Identify'
export default {
    components:{
        'reg-foot':RegFoot,
        'identify':Identify
    },
    data(){
        return {
            uname:'',
            uname_msg:'',
            upwd:'',
            upwd_msg:'',
            email:'',
            email_msg:'',
            yanzhengma:'',
            yanzhengma_msg:'',
            tongyi:true,
            tongyi_msg:'',
            identifyCodes:'1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIjKLMNOPQRSTUVWXZY',
            identifyCode:''
        }
    },
    methods: {
        uname_input(){
            this.uname_msg='请输入6-64位字符，支持数字、字母以及“_”组合';
        },
        upwd_input(){
            var uname=this.uname;
            var reg=/^[0-9_a-zA-Z]{6,64}$/;
            if(!uname){
                this.uname_msg='请输入用户名';
                return ;
            }else if(!reg.test(uname)){
                this.uname_msg='用户名格式不正确，请重新输入';
                return ;
            }else{
                var obj={uname:uname}
                this.axios.get('uname',{params:obj}).then(result=>{
                    if(result.data.code==-1){
                        this.uname_msg='该用户名已存在，请重新输入';
                        return;
                    }else{
                        this.uname_msg='';
                        this.upwd_msg='请输入6-20位数字、字母或常用符号，字母区分大小写';
                    }
                })
            }
        },
        email_input(){
            var upwd=this.upwd;
            var reg=/^[\x00-\xFF]{6,20}$/;
            if(!upwd){
                this.upwd_msg='请输入密码';
                return ;
            }
            if(!reg.test(upwd)){
                this.upwd_msg='密码格式不正确，请重新输入';
                return ;
            }else{
                this.upwd_msg='';
            }
            this.email_msg='请输入真实邮箱，便于密码找回';
        },
        yanzhengma_input(){
            var email=this.email;
            var reg=/^([a-zA-Z0-9])+([a-zA-Z0-9_\.\-])*@[A-Za-z0-9]+([-.][A-Za-z0-9]+)*\.[A-Za-z0-9]+([-.][A-Za-z0-9]+)*$/;
            if(!email){
                this.email_msg='请输入邮箱';
                return ;
            }else if(!reg.test(email)){
                this.email_msg='邮箱格式不正确，请重新输入';
                return ;
            }else{
                this.email_msg='';
            }
            this.yanzhengma_msg='请输入验证码'
        },
        registe(){
            if(!this.uname || !this.upwd || !this.email ){
                this.uname_msg='请输入用户名'
            }
            if(this.tongyi==false){
                this.tongyi_msg="请确认阅读并同意注册协议";
            }else{
                var fileFormData=new URLSearchParams();
                fileFormData.append("uname",this.uname);
                fileFormData.append("upwd",this.upwd);
                fileFormData.append("email",this.email);
                var requestConfig={
                    headers:{
                        'Content-Type':'application/x-www-form-urlencoded'
                    }
                }
                this.axios.post('registe',fileFormData,requestConfig).then(result=>{
                    if(result.data.code==1){
                        this.$confirm('注册成功，去登录', '', {
                            confirmButtonText: '确定',
                            cancelButtonText: '取消',
                            type: 'success'
                        }).then(() => {
                            this.$router.push("/Login");
                        }).catch(() => { });
                    }
                })
            }
        },
        changetongyi(){
            if(this.tongyi==false){
                this.tongyi_msg="请确认阅读并同意注册协议";
            }else{
                this.tongyi_msg=""
            }
        },
        //验证码verify
        verify(){  
            //验证码验证
            console.log(this.yanzhengma,this.identifyCode);
            if(this.yanzhengma==this.identifyCode){
                this.yanzhengma_msg='';
            }else{
                this.yanzhengma='',
                this.refreshCode();
                this.yanzhengma_msg='验证码错误，请重试'
            }
        },
        //验证码
        randomNum(min,max){
            return Math.floor(Math.random()*(max-min)+min)
        },
        refreshCode(){
            this.identifyCode='';
            this.makeCode(this.identifyCodes,4);
        },
        makeCode(o,l){
            for(let i=0;i<l;i++){
                this.identifyCode+=this.identifyCodes[
                    this.randomNum(0,this.identifyCodes.length)
                ]
            }
        },
    },
    mounted() {
        this.identifyCode='';
        this.makeCode(this.identifyCodes,4);
    },
    created() {
        // this.refreshCode()
    },
}
</script>
<style scoped>
.topban,.container_registe .header,.container_registe .registe_box{
    width: 990px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.registe_box{
    height: 500px;
}
.topban{
    height: 38px;
    line-height: 38px;
    font-size:12px;
    color: #000;
}
.topban>div:first-child .danger{
    color: #c00;
    text-decoration: none
}
.topban>div:first-child span,.topban>div:last-child span{
    margin: 0 6px;
}
.topban>div:last-child span,.topban>div:last-child a,.header span{
    color: #666;
}
.container_registe{
    width: 100%;
    height: 1000px;
    background: #86ddfa;
}
.container_registe .header>a:first-child{
    background: url(../assets/registe/register1-logo.jpg) no-repeat;
    display: block;
    height: 85px;
    width: 194px;
    background-position: 10px center;
    padding-left: 10px;
}
.container_registe .header>a:last-child{
   color: #0091d5;
   font-size: 12px;
}
.container_registe .registe_box{
    border: 1px solid #7cbcda;
    border-radius: 5px;
    background-color: #f4f4f4;
}
.container_registe .registe_box .box_left{
    width: 660px;
    padding-left: 95px;
    text-align: left;
    color: #666;
    box-sizing: border-box;
}
.container_registe .registe_box .box_left>p:first-child{
    font-size: 20px;
    font-weight: bold;
    padding-bottom: 30px;
    padding-top: 20px;
    color: #676767;
    text-align: left;
    padding: 20px 0 30px;
}
.container_registe .registe_box .box_left>input{
    height: 27px;
    padding-top: 7px;
    width: 289px;
    padding-left: 5px;
    border: 1px solid #ccc;
}
.container_registe .registe_box .box_left p{
    height: 32px;
    line-height: 32px;
    padding-left: 65px;
    color: #c00;
    font-size: 12px;
    text-align: left;
}
.upwd{
    background: url(../assets/registe/register2-icon2.jpg) no-repeat right center;
}
.email{
    background: url(../assets/registe/register2-icon4.jpg) no-repeat right center;
}
.container_registe .registe_box .box_left img{
    position: relative;
    top:8px;
    left: 10px;
}
.container_registe .registe_box .box_left .change{
    color: #adadad;
    font-size: 12px;
    margin-left: 30px;
    text-decoration: underline;
}
.container_registe .registe_box .box_left .toregiste{
    display: block;
    height: 45px;
    width: 298px;
    text-align: center;
    color: #fff;
    line-height: 36px;
    font-size: 16px;
    background-color: #e42713;
    font-family: "微软雅黑";
    font-weight: bold;
    margin-left: 60px;
    cursor: pointer;
    margin-bottom:10px;
    position: relative;
    top: -30px;
    left: 0px;
}
#yanzhengma.upwd_msg,.lastp,.tongyi_msg{
    position: relative;
    top: -30px;
    left: 0px;
}
.container_registe .registe_box .box_left label{
    color: #000;
}
.container_registe .registe_box .box_left label a{
    color: #3366ff;
}
.container_registe .registe_box .box_left .tongyi_msg{
    color: #fe7f70;
}
.box_right{
    width: 290px;
    margin: 0 auto;
    position: relative;
    top: 0;
    left: -20px;
}
.box_right>div{
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
}
.box_right>p{
    color: #999;
    font-size: 14px;
    border-bottom: dashed 1px #ccc;
    padding-bottom: 15px;
    text-align: center;
}
.box_right a{
    color: #797979;
    padding: 8px 0 8px 5px;
    width: 56px;
    font-size: 12px;
}
.box_right>div>div>a:last-child:hover{
    text-decoration: underline;
}
.box_right>div>div{
    display: flex;
    align-items: center;
    height: 89px;
    width: 145px;
}
.box_right>div:last-child .create{
    width: 100%;
    margin-top: 78px;
    text-align: right;
    font-size: 14px;
    color: #6f6f6f;
    text-decoration: underline;
    padding-right: 10px;
}
.registe{
    font-family: '宋体'
}
#code{
    width:150px;
}
</style>