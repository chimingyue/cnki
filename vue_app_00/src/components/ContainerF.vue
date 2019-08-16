<template>
    <div class="gongju">
        <h4>学习工具</h4>
        <div>
            <div>
                <img src="../assets/index/bot_banner.jpg" alt="">
            </div>
            <div class="gongju_right">
                <ul class="rightul">
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">学术搜索</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">学术研究热点翻译助手</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">数字化学习平台</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">数字化研究平台</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">查工具书</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">国家各级科研项目</a></li>
                    <li><a href="http://scholar.cnki.net/default.aspx" class="myfont">概念搜索</a></li>
                    <li><a href="" class="myfont">统计数据分析</a></li>
                    <li><a href="" class="myfont">“一带一路”资源</a></li>
                </ul>
                <div class="rightdiv">
                    <a href="http://scholar.cnki.net/default.aspx" class="myfont">外文资源搜索</a>
                    <a href="http://scholar.cnki.net/default.aspx" class="myfont">选刊投稿</a>
                    <a href="http://scholar.cnki.net/default.aspx" class="myfont">CAJ阅读器下载</a>
                    <a href="http://scholar.cnki.net/default.aspx" class="myfont">手机法典APP</a>
                </div>
            </div>
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
.gongju>div{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.gongju h4{
    border: 0;
    padding: 0;
}
.gongju .gongju_right{
    width: 790px;
    border: solid #c7c7c7 1px;
    display: flex;
    justify-content: space-between;
}
.gongju_right .rightul{
    height: 112px;
    width: 460px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
}
.gongju_right .rightul li{
    width: 150px;
    list-style: none;
    line-height: 30px;
    height: 30px;
}
.gongju_right .rightul li a{
    color: #333;
}
.gongju_right .rightul li a:hover{
    color: #1980ff;
}
.gongju_right .rightdiv{
    width:305px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}
.gongju_right>div a{
    display: block;
    color: #FFF;
    text-align: center;
    width: 150px;
    line-height: 54px;
    height: 54px;
}
.rightdiv a:first-child{
    background: url(../assets/index/bot_01.jpg)
}
.rightdiv a:nth-child(2){
    background: url(../assets/index/bot_02.jpg)
}
.rightdiv a:nth-child(3){
    background: url(../assets/index/bot_03.jpg)
}
.rightdiv a:last-child{
    background: url(../assets/index/bot_04.jpg)
}
</style>