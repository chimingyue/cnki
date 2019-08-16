<template>
    <div class="mlaw">
        <div class="header">
            <div>法律</div>
            <ul>
                <li><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbPrefix=CLKD">法库7.0</a></li>
                <li><router-link to="/">中国法律数字图书馆</router-link></li>
                <li><a href="http://www.cnki.net/">中国知网</a></li>
            </ul>
        </div>
        <div class="hdbg">
            <div class="container">
                <div class="container_left">
                    <h2>CNKI手机法典</h2>
                    <h3>移动法律数字图书馆</h3>
                    <div class="erweima">
                        <div>
                            <p>CNKI手机法典（APP版）</p>
                            <p>Android下载</p>
                            <p>
                                <img src="../assets/mlaw/erweima.png" alt="">
                                <span>Android版</span>
                            </p>
                        </div>
                        <div>
                            <p>CNKI手机法典（APP版）</p>
                            <p>IOS下载</p>
                            <p>
                                <img src="../assets/mlaw/apple.png" alt="">
                                <span>IOS版</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="container_right">
                    <img src="../assets/mlaw/hdfr.png" alt="">
                </div>
            </div>
        </div>
        <div class="content">
            <h3>服务对象</h3>
            <p>人大、公安、法院、检察院、政府法制办、司法厅/局、法学会、法学教学科研机构、律所、企业法务等有法律知识需求的机构用户。</p>
            <h3>服务内容</h3>
            <p>《中国法律知识资源总库》全部文献，包括论文、案例、法律法规。</p>
            <h3>服务方式</h3>
            <p>以机构为单位申请开通。账号与手机设备号绑定，一个账号仅限一部手机登录。</p>
        </div>
        <hr>
        <div class="intro">
            <h3>CNKI手机法典介绍</h3>
            <img src="../assets/mlaw/colu01.png" alt="">
        </div>
        <hr>
        <div class="rexian">
            <h3>CNKI手机法典服务热线</h3>
            <div>
                <div>
                    <h4>订购咨询</h4>
                    <p class="callin">010-62701673</p>
                    <p class="callin01">梁先生</p>
                </div>
                <div>
                    <h4>使用帮助</h4>
                    <p class="callin">010-62719832</p>
                    <p class="callin01">张女士</p>
                </div>
                <div>
                    <p class="callin01">中国法律数字图书馆</p>
                    <h4>微信公众号咨询</h4>
                </div>
            </div>
        </div>
        <div class="footer">
            <span>以上活动最终解释权归“中国知网”所有</span>
            <img src="../assets//mlaw/pic.gif" alt="">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {}
    }
}
</script>
<style scoped>
.mlaw .header,.hdbg .container{
    width: 1000px;
    margin: 8px auto;
    display: flex;
    justify-content: space-between;
} 
.header>div{
    width: 200px;
    height: 68px;
    background: url(../assets/mlaw/bg.gif) no-repeat 0px 0px;
    font-size: 30px;
    padding-left: 60px;
    line-height: 68px;
}
.header>ul{
    width: 400px;
    height: 80px;
    line-height: 80px;
    display: flex;
    justify-content: space-between;
}
.header>ul li{
    list-style: none;
}
.header>ul li a{
    font-size: 18px;
    color: #434a51;
    text-decoration: none;
}
.header>ul li a:hover{
    color: #1e6fde;
}
.hdbg{
    height: 550px;
    background: url(../assets/mlaw/headerbg.jpg) center 0px no-repeat;
}
.hdbg .container .container_left{
   width: 540px;
}
.hdbg .container .container_left h2{
    font-size: 60px;
    color: #fff;
    text-align: center;
    padding-top: 55px;
    font-weight: normal;
    line-height: 1.7em;
}
.hdbg .container .container_left h3{
    font-size: 30px;
    color: #cbdff2;
    text-align: center;
    margin-bottom: 45px;
    font-weight: normal;
    line-height: 1.7em;
}
.hdbg .container .container_left .erweima{
    display: flex;
    justify-content: space-between;
}
.erweima>div{
    width: 210px;
    height: 270px;
    color: #fff;
    border: 1px #FFFFFF solid;
    background: url(../assets/mlaw/top-hover.png) no-repeat 0px 0px;
}
.erweima>div p{
    font-size: 18px;
    color: #fff;
    line-height: 40px;
}
.erweima>div p:first-child{
    padding-top: 25px;
    color: #fff;
    text-align: center;
}
.erweima>div p:nth-child(2){
    background: url(../assets/mlaw/icon-and-link.png) no-repeat 40px 5px;
    padding-left: 35px;
}
.erweima>div:last-child p:nth-child(2){
    background: url(../assets/mlaw/icon-apple-link.png) no-repeat 54px 2px;
    padding-left: 20px;
}
.erweima>div p:last-child{
    display: flex;
    flex-direction: column;
    font-size: 14px;
    margin-top: 10px;
}
.erweima>div p:last-child img{
    width: 114px;
    height: 114px;
    margin: 0 auto;
}
.container_right{
    padding-top: 165px;
}
.content{
    width: 1000px;
    margin: 50px auto 40px;
}
.content h3{
    width: 151px;
    height: 42px;
    line-height: 42px;
    text-align: center;
    font-size: 20px;
    color: #FFF;
    background: url(../assets/mlaw/tit02.png) no-repeat 0px 0px;
    margin-bottom: 10px;
}
.content p{
    color: #959595;
    background: url(../assets/mlaw/icon.png) no-repeat 0px 13px;
    line-height: 35px;
    margin-bottom: 40px;
    padding-left: 20px;
    text-align: left;
}
.intro,.rexian{
    width: 1000px;
    margin: 25px auto;
}
.intro h3,.rexian h3{
    height: 55px;
    line-height: 55px;
    font-size: 26px;
    font-weight: normal;
}
.rexian>div{
    display: flex;
    justify-content: space-between;
}
.rexian h4{
    width: 250px;
    text-align: center;
    font-size: 20px;
    color: #444c54;
    margin-top: 10px;
    border: 0;
    line-height: 1.7em;
    padding: 0 !important;
}
.rexian .callin{
    font-size: 20px;
    color: #169ce9;
    line-height: 40px;
    text-align: center !important;
    padding: 0 !important;
}
.rexian .callin01{
    font-size: 16px;
    color: #959595;
    text-align: center;
}
.rexian>div div:first-child{
    padding-top: 90px;
    background: url(../assets/mlaw/colu03.png) no-repeat 91px 0px;
}
.rexian>div div:nth-child(2){
    padding-top: 90px;
    background: url(../assets/mlaw/colu03.png) no-repeat 91px -331px;
}
.rexian>div div:last-child{
    padding-top: 120px;
    background: url(../assets/mlaw/weixin.png) no-repeat 75px 0px;
}
.footer{
    width: 1000px;
    height: 45px;
    line-height: 45px;
    margin: 0 auto;
    color: #434a51;
    font-size: 16px;
}
</style>