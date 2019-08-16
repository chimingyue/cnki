<template>
    <div>
    <!--header-->
        <div class="search">
            <div class="search_left">
                <div class="text">CNKI 法律检索</div>
                <div class="inputs">
                    <input type="text" class="inputtxt" placeholder="输入关键词查询">
                    <input type="button" class="inputbtn" value="高级检索">
                    <a href="http://lawnew.cnki.net" class="inputbtngj">进入数据库</a>
                </div>
                <div class="left_nav">
                    <span>特色查询:</span>
                    <span><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbPrefix=CLKLT">法条检索</a></span>
                    <span><a href="http://qa.cnki.net/web/SIndex?domain=%E6%B3%95%E5%BE%8B">随问法律</a></span>
                    <span><a href="http://lawnew.cnki.net/kns/Navi_clkd/Clkj.aspx">整刊检索</a></span>
                    <span><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbPrefix=CLKN">法律报纸</a></span>
                    <span><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbPrefix=CLKJ">期刊全文</a></span>
                    <span><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbPrefix=CLKM">学位论文</a></span>
                </div>
            </div>
            <div class="search_right">
                <ul>
                    <li class="li_01"><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">法规</a></li>
                    <li class="li_02"><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKC&catalogName=CLKD_CLS">案例</a></li>
                    <li class="li_03"><a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKT">论文</a></li>
                    <li class="li_04"><a href="http://zhengbao.cnki.net/kns55/index.aspx?dbcode=cjfz">案由索引</a></li>
                    <li class="li_05"><a href="http://zhengbao.cnki.net/kns55/index.aspx?dbcode=cjfz">政务公报</a></li>
                    <li class="li_06"><a href="http://hetong.cnki.net/law/home/hetong/index.html">合同文本</a></li>
                    <li class="li_07"><a href="http://law.cnki.net/zpzx/page_2.html">智慧办案</a></li>
                </ul>
            </div>
        </div>
        <div class="nav">
            <div class="nav_left">
                <p>行业导航</p>
                <ul>
                    <li><a href="http://law.cnki.net/rdjc/">人大</a></li>
                    <li><a href="http://law.cnki.net/zfw/">政法委</a></li>
                    <li><a href="http://law.cnki.net/fyzsfw/">法院</a></li>
                    <li><a href="http://law.cnki.net/jcymb/">检察院</a></li>
                    <li><a href="http://law.cnki.net/sfjc/">司法</a></li>
                    <li class="noborder"><a href="http://law.cnki.net/jy/">监狱</a></li>                    
                </ul>
                <ul>
                    <li><a href="http://law.cnki.net/jdzsfw">戒毒</a></li>                    
                    <li><a href="http://law.cnki.net/lawyer/">律所</a></li>                    
                    <li><a href="http://law.cnki.net/gzzsfy/">公证</a></li>                    
                    <li><a href="http://law.cnki.net/sfjd/">鉴定</a></li>                    
                    <li><a href="http://law.cnki.net/zc/">仲裁</a></li>                    
                    <li class="noborder"><a href="http://law.cnki.net/gays/">公安</a></li>                    
                </ul>
                <ul>
                    <li><a href="http://law.cnki.net/xfzsfw/">消防</a></li>                    
                    <li><a href="http://law.cnki.net/edu/">法学院</a></li>                    
                    <li><a href="http://law.cnki.net/qyfw/">法务</a></li>                    
                    <li><a href="http://law.cnki.net/csgl">城管</a></li> 
                    <li><a href="http://law.cnki.net/lawyer/">律所</a></li>                    
                    <li class="noborder"><a href="http://law.cnki.net/gzzsfy/">公证</a></li>  
                </ul>
            </div>
            <div class="nav_right">
                <el-carousel height="200px" direction="vertical" :autoplay="true">
                    <el-carousel-item v-for="item in list" :key="item.id">
                        <img :src="item.img" alt="">
                    </el-carousel-item>
                </el-carousel>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[
                {id:0,img:require("../assets/index/banner_01.jpg")},
                {id:1,img:require("../assets/index/banner_03.jpg")},
                {id:2,img:require("../assets/index/banner_04.jpg")},
                {id:3,img:require("../assets/index/banner_5.jpg")},
                {id:4,img:require("../assets/index/banner_6.jpg")},
                {id:5,img:require("../assets/index/banner_7.jpg")},
            ]
        }
    }
}
</script>
<style scoped>
.search{
    background: url(../assets/index/seachbg.jpg) no-repeat left top;
    background-size:cover;
    width: 1200px;
    height: 130px;
    margin: -90px auto 0px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-align: left;
}
.text{
    padding: 12px 0 12px 20px;
}
.inputs{
    clear: both;
    padding-left:20px;
}
.inputtxt{
    width: 380px;
    height: 30px;
    line-height: 30px;
    border: solid #c7c7c7 1px;
    padding-left: 5px;
    float: left;
}
.inputbtn{
    background-color: #1e6fde;
    float: left;
    width: 80px;
    height: 32px;
    line-height: 32px;
    cursor: pointer;
    border-width: 0;
    color: #fff;
}
.inputbtngj{
    text-align: center;
    display: block;
    float: left;
    width: 90px;
    height: 32px;
    font-size: 14px;
    line-height: 32px;
    cursor: pointer;
    border-width: 0;
    margin: 0 0 10px 10px;
    color: #1b66e6;
    border: 1px #c7c7c7 solid;
    box-sizing: border-box;
    background-color: #fff;
}
.left_nav{
    width: 100%;
    clear: both;
    font-size: 12px;
    display: flex;
    justify-content: space-around;
    margin-top: 10px !important;
}
.left_nav a{
    color: #1e6fde;
}
.left_nav a:hover{
    text-decoration: underline;
}
.search_right ul{
    display: flex;
    justify-content: space-between
}
.search_right ul li{
    list-style: none;
    display: flex;
}
.search_right ul li:hover{
    background: #89adeb;
}
.search_right ul li a{
    display: block;
    width: 85px;
    height: 50px;
    font-size: 14px;
    padding-top: 85px;
    text-align: center;
    color: #333;
}
.search_right ul li a:hover{
    color: #fff;
}
.search_right .li_01{
    background: url(../assets/index/s_fr.png) no-repeat 16px 25px;
}
.search_right .li_02{
    background: url(../assets/index/s_fr.png) no-repeat 14px -103px;
}
.search_right .li_03{
    background: url(../assets/index/s_fr.png) no-repeat 15px -215px;
}
.search_right .li_04{
    background: url(../assets/index/s_fr.png) no-repeat 13px -328px;
}
.search_right .li_05{
    background: url(../assets/index/s_fr.png) no-repeat 14px -446px;
}
.search_right .li_06{
    background: url(../assets/index/s_fr.png) no-repeat 14px -567px;
}
.search_right .li_07{
    background: url(../assets/index/s_fr.png) no-repeat 13px -688px;
}
.nav{
    margin-top: 20px;
    display: flex;
    justify-content: space-between;
}
.nav_left{
    width: 400px;
    height: 145px;
    border: solid #c7c7c7 1px;
}
.nav_left p{
    font-size: 16px;
    background-color: #1e6fde;
    width: 40%;
    height: 35px;
    line-height: 35px;
    text-align: center;
    color: #FFF;
    border: solid #c7c7c7 1px;
    border-radius: 0px 20px 20px 0px;
}
.nav_left ul{
    width: 100%;
    padding: 0 10px;
    margin:  10px auto;
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
}
.nav_left ul li{
    width: 50px;
    display: flex;
    list-style: none;
    border-right: solid #c7c7c7 1px;
    box-sizing: border-box;
}
.nav_left ul li a{
    font-size: 14px;
    color:#333;
}
.nav_left ul li a:hover{
    color: #1e6fde;
}
.noborder{
    border: 0 !important;
}
.nav_right img:hover{
    cursor: pointer;
}
</style>