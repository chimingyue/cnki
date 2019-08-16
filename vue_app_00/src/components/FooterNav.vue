<template>
    <div class="footer">
        <div class="wrapper1">
            <ul>
                <li><a href="javascript:;" class="myfont">新手上路</a></li>
                <li><a href="javascript:;" class="myfont">体验中心</a></li>
                <li><a href="javascript:;" class="myfont">订阅指南</a></li>
                <li><a href="javascript:;" class="myfont">使用手册</a></li>
                <li><a href="javascript:;" class="myfont">培训视频</a></li>
                <li><a href="javascript:;" class="myfont">常见问题</a></li>
                <li><a href="javascript:;" class="myfont">在线客服</a></li>
            </ul>
        </div>
        <div class="wrapper2">
            <ul>
                <li><a href="javascript:;" class="myfont">诚聘英才</a></li>
                <li><a href="javascript:;" class="myfont">关于我们</a></li>
                <li><a href="javascript:;" class="myfont">联系我们</a></li>
            </ul>
            <div class="myfont">
                <div class="foot_left">
                    <p class="text">
                        <span>京ICP证040431号</span>
                        <a href="http://piccache.cnki.net/index/images/gb/271.jpg">网络出版服务许可证（总）网出证（京）字第271号</a>
                    </p>
                    <p class="text">京公网安备11010802020460号</p>
                    <p class="text">© 2008-2019 中国知网（CNKI）《中国学术期刊（光盘版）》电子杂志社有限公司 </p>
                    <p class="text">KDN平台基础技术由KBASE11.0提供</p>
                    <p>
                        <img src="../assets/footer/kxwz.png" alt="">
                        <img src="../assets/footer/cert.jpg" alt="">
                    </p>
                    <p>
                        <img src="../assets/footer/pic.gif" alt="">
                    </p>
                </div>
                <div class="foot_right">
                    <p>
                        <img src="../assets/footer/fadian.jpg" alt="">
                        <span>手机法典Android版</span>
                    </p>
                    <p>
                        <img src="../assets/footer/fadian_apple.jpg" alt="">
                        <span>手机法典IOS版</span>
                    </p>
                    <p>
                        <img src="../assets/footer/weixin_law.jpg" alt="">
                        <span>官方微信 关注有礼</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    }
}
</script>
<style scoped>
.footer{
    margin-top: 20px;
    width: 100%;
}
.footer .wrapper1{
    background: #565e66;
}
.footer .wrapper1 ul,.footer .wrapper2>ul,.footer .wrapper2>div{
    width: 1200px;
    margin: 0 auto;
    display: flex;
    align-items: center;
}
.footer .wrapper1 ul,.footer .wrapper2 ul:first-child{
    height: 35px;
    line-height: 35px;
}
.footer .wrapper1 ul li,.footer .wrapper2 ul:first-child li{
    width: 111px;
    list-style: none;
    text-align: left;
}
.footer .wrapper1 ul a,.footer .wrapper2 ul:first-child a{
    color: #fff;
}
.footer .wrapper2{
    background: #394048;
}
.footer .wrapper2 ul:first-child{
    border-bottom: solid #565e66 1px;
}
.footer .wrapper2>div{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 0 20px 0;
}
.footer .wrapper2>div,.footer .wrapper2>div a{
    color:#9a9a9a;
    text-align: left;
}
.footer .wrapper2>div a{
    margin-left: 10px;
}
.footer .wrapper2>div a:hover{
    color: #fff;
}
.footer .wrapper2>div p.text{
    height: 25px;
    line-height: 25px;
}
.footer .wrapper2>div p:nth-child(5) img{
    margin: 10px 10px 10px 0;
}
.footer .wrapper2 .foot_right{
    width: 450px;
    display: flex;
}
.footer .wrapper2 div.foot_right{
    display: flex;
    justify-content: space-around;
}
.footer .wrapper2 .foot_right p{
    display: flex;
    flex-direction: column;
    align-self: center;
    text-align: center;
}
.footer .wrapper2 .foot_right p span{
    margin-top: 6px;
}
</style>