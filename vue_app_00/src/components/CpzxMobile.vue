<template>
    <div>
        <cpzx></cpzx>
        <!-- 导航 -->
        <div class="hdnavbg">
            <ul>
                <li><router-link to="/CpzxIndex" >数据中心</router-link></li>
                <li><router-link to="/CpzxHangye">行业知识服务平台</router-link></li>
                <li><router-link to="/CpzxSifa" >智慧司法解决方案</router-link></li>
                <li><router-link to="/CpzxMobile" class="active">移动端产品</router-link></li>
                <li><router-link to="/CpzxIndex">典型案例</router-link></li>
            </ul>
        </div>
        <div class="cpzxcontent">
            <!-- 移动端产品-->
            <h4 class="mobile1">移动端产品</h4>
            <div class="sifabox">
                <div class="sifabox1">
                    <div><a href="javascript:;">CNKI手机法典</a></div>
                    <p>
                        《CNKI手机法典》是个人的移动法律数字图书馆，可在线检索《中国法律知识资源总库》法规、案例、论文全部内容，按出版物、主题定制内容，在手机上收藏、保存、管理下载文献资料；也是机构的移动普法和法律知识学习平台，可按人大、法院、检察院、公安等行业订阅内容，为机构进行普法宣传类、法律学习类、业务知识搜索类APP提供应用对接。
                    </p>
                </div>
            </div>
            <div class="sifabox">
                <div class="sifabox2">
                    <div><a href="javascript:;">CNKI移动普法宣传机</a></div>
                    <p>
                        中国知网为深入推进法制宣传教育，开发“CNKI移动普法宣传机”，精选与民众生活息息相关的重点法律法规、司法解释等规范性文件，通过触摸屏的形式进行法律信息的仿真浏览、阅读，软件、硬件、资源一步到位，是开展法制宣传教育的新型载体，也是宣传展示法治建设成果、落实阳光司法要求的新窗口和新阵地。
                    </p>
                </div>
            </div>
        </div>
        <div class="cpzxfooter">
            <p>010-62701673</p>
            <p>中国知网<img src="../assets/cpzx/pic.gif" alt=""></p>
        </div>
    </div>
</template>
<script>
import Cpzx from './Cpzx'
export default {
    data(){
        return {}
    },
    components:{
        "cpzx":Cpzx
    }
}
</script>
<style scoped>
.sifabox1{
    background: url(../assets/cpzx/pg3_yidong1.jpg) no-repeat 0px 0px;
}
.sifabox2{
    background: url(../assets/cpzx/pg3_yidong2.jpg) no-repeat 0px 0px;
}
.sifabox1 a,.sifabox2 a{
    background: url(../assets/cpzx/titbg02.png) no-repeat 0px 0px;
}
.sifabox{
    margin-top: 30px;
}
.mobile1{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -1105px;
}
</style>