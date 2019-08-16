<template>
    <div>
        <cpzx></cpzx>
        <!-- 导航 -->
        <div class="hdnavbg">
            <ul>
                <li><router-link to="#" class="active">数据中心</router-link></li>
                <li><router-link to="/CpzxHangye">行业知识服务平台</router-link></li>
                <li><router-link to="">智慧司法解决方案</router-link></li>
                <li><router-link to="">移动端产品</router-link></li>
                <li><router-link to="">典型案例</router-link></li>
            </ul>
        </div>
        <div class="cpzxcontent">
            <!-- 法律类 -->
            <h4>法律类</h4>
            <div class="lawbox">
                <div>
                    <div><a href="javascript:;">中国法律知识资源总库</a></div>
                    <p>
                        深度整合了100多万篇法律法规细分为390万个法律条目、60多万篇精选案例、1000多万例裁判文书、260多万篇论文等多类型的法律知识，以案由为中心设计了业务助手功能。
                    </p>
                </div>
                <div >
                    <div class="law02"><a href="javascript:;">中国政报公报期刊文献总库</a></div>
                    <p>
                        收录各类政报、公报、公告和文告类期刊，种数达到182种，截止到2017年底，收录文献量42万篇。
                    </p>
                </div>
                <div >
                    <div class="law03"><a href="javascript:;">CNKI合同文本库</a></div>
                    <p>
                        整合各类型权威、典型合同范本，为用户提供完善、实用、便捷的查询工具，实现精准查询，具备合同风险提示、知网节拓展等特色功能，集指导性与学习性于一体。
                    </p>
                </div>
            </div>
            <!-- 法律外文资源 -->
            <h4 class="waiwenh">法律外文资源</h4>
            <div class="lawbox">
                <div>
                    <div class="waiwen01"><a href="javascript:;">EBSCO法律专辑全文数据库</a></div>
                    <p>
                        涵盖知识产权法、法学、破产法、家庭法、医疗法、比较法、国籍法、反垄断法、证据法、就业法、环境法、科技法、公司法、银行法、商业法等内容。收录学术期刊334种。【申请体验后可阅读】
                    </p>
                </div>
                <div >
                    <div class="waiwen02"><a href="javascript:;">EBSCO刑事司法犯罪数据库</a></div>
                    <p>
                        涵盖立法、刑法、禁毒、社区、监狱、儿童犯罪、恐怖主义等内容。截止到2017年底，收录学术期刊495种。【申请体验后可阅读】
                    </p>
                </div>
                <div >
                    <div class="waiwen03"><a href="javascript:;">EBSCO国际安全与反恐资源</a></div>
                    <p>
                        涵盖恐怖主义、网络恐怖主义、暴力、刑事司法、危机管理等内容。收录学术期刊611种;报告/文件1617种；杂志221种；书籍402种。【申请体验后可阅读】
                    </p>
                </div>
            </div>
            <!-- 党建 -->
            <h4 class="dangjian">党建类</h4>
            <div class="lawbox dangjian">
                <div>
                    <div class="dangjian01"><a href="javascript:;">中国党建期刊文献总库</a></div>
                    <p>
                        收录我国正式出版的党建、党史、行政、经济、人大、政协、民主党派类220多种期刊，内容覆盖党建理论、方针政策、动态信息、党史研究、领导科学、管理科学等执政经验和党委、政协、人大、政府工作等方面。
                    </p>
                </div>
                <div >
                    <div class="dangjian02"><a href="javascript:;">学习贯彻十九大专题库</a></div>
                    <p>
                        收录党的十九大报告和最新的中国共产党章程，还囊括了习近平总书记系列讲话原文，梳理了党的十八大以来习近平总书记的治国理政活动轨迹，多角度展示了习近平总书记治国理政辉煌成就同时设计提供与之相配套的学习词典和知识题库。
                    </p>
                </div>
            </div>
            <!-- 综合学科 -->
            <h4 class="zonghe">综合学科</h4>
            <div class="zonghebox">
                <a href="javascript:;" class="zonghe01">
                    <span>经济管理</span>
                    <p>涵盖宏观经济管理与可持续发展、经济理论及行业经济、财政与税收、金融、证券、保险、投资、会计、审计、领导学与决策学等内容。</p>
                    <!-- <div class="shadow"></div> -->
                </a>
                <a href="javascript:;" class="zonghe02">
                    <span>文史哲</span>
                    <p>涵盖文化、音乐、舞蹈、摄影， 地理、历史、中国民族与地方史志、哲学、逻辑学、心理学、宗教等内容</p>
                    <!-- <div class="shadow"></div> -->
                </a>
                <a href="javascript:;" class="zonghe03">
                    <span>社会科学</span>
                    <p>涵盖社会科学理论与方法、社会学及统计学、民族学、人口学与计划生育、人才学与劳动科学、教育、体育等内容。</p>
                    <!-- <div class="shadow"></div> -->
                </a>
                <a href="javascript:;" class="zonghe04">
                    <span>信息科技</span>
                    <p>涵盖电信技术、计算机软硬件技术及计算机应用、互联网技术、自动化技术、新闻与传媒、图书情报与数字图书馆等内容。</p>
                    <!-- <div class="shadow"></div> -->
                </a>
                <a href="javascript:;" class="zonghe05">
                    <span>医药卫生</span>
                    <p>涵盖基础医学、药学、中医、特殊病种、各医学学科、急救医学、生物医学工程等内容。</p>
                    <!-- <div class="shadow"></div> -->
                </a>
            </div>
            <!-- 文化类 -->
            <h4 class="wenhuah">文化生活类</h4>
            <div class="lawbox">
                <div>
                    <div class="wenhua01"><a href="javascript:;">中国精品文艺作品期刊文献库</a></div>
                    <p>
                        收录我国正式出版发行的文艺类期刊400多种，并以篇为单元收录其他期刊发表的同类文献，以集成化网络出版方式传播文艺作品。
                    </p>
                </div>
                <div >
                    <div class="wenhua02"><a href="javascript:;">中国精品文化期刊文献库</a></div>
                    <p>
                        择优收录我国正式出版发行的600余种文化期刊，内容涵盖历史人文、法制时政、财经管理、文学文摘、娱乐时尚、衣食住行等方面。
                    </p>
                </div>
                <div >
                    <div class="wenhua03"><a href="javascript:;">中国精品科普期刊文献库</a></div>
                    <p>
                        收录我国精品大众科普期刊文献190多种，面向高校、科研、企业和政府等各类机构及社会大众，以集成网络化出版形式传播科普知识。
                    </p>
                </div>
            </div>
            <!-- 工具书类 -->
            <h4 class="gongju">工具书类</h4>
            <div class="lawbox dangjian">
                <div>
                    <div class="gongju01"><a href="javascript:;">中国工具书网络出版总库</a></div>
                    <p>
                        收录了300多家知名出版社近10000余部工具书，类型包括：汉语字典、双语词典、专科辞典、百科全书、图谱年表、手册、名录、语录、传记等。通过先进的网络出版技术和数据库检索系统的支持，提供字、词、句、专业术语、事实、数据、人名、地名、翻译等百科知识检索服务。
                    </p>
                </div>
                <div >
                    <div class="gongju02"><a href="javascript:;">中国经济与社会发展统计数据</a></div>
                    <p>
                        收录中国统计出版社及各统计年鉴编辑部提供的创刊以来的统计年鉴及各类统计资料；来自统计局的最新季月度数据、行业数据。对中国境内出版的权威统计年鉴、各类统计资料、最新季月度数据等进行Excel加工，并配备各类统计数据挖掘分析工具的智能化统计数据库和统计数据分析平台。
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
.cpzxcontent h4{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px 0px;
}
.cpzxcontent h4.waiwenh{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -798px;
}
.cpzxcontent h4.wenhuah{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -476px;
}
.cpzxcontent h4.gongju{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -629px;
}
.cpzxcontent h4.zonghe{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -312px;
}
.cpzxcontent a{
    background: url(../assets/cpzx/titbg01.png) no-repeat 0px 0px;
}
.lawbox>div{
    width: 26%;
    height: 250px;
    padding: 25px;
    margin-bottom: 10px;
    background-color: #FFFFFF;
    border: 1px #e8e9ef solid;
    box-shadow: 0px 0px 10px 5px #e8e9ef;
}
.lawbox>div>div{
    background: url(../assets/cpzx/pg1_law.jpg) no-repeat 0px 0px;
}
.lawbox>div .law02{
    background: url(../assets/cpzx/pg1_law.jpg) no-repeat 0px -222px;
}
.lawbox>div .law03{
    background: url(../assets/cpzx/pg1_law.jpg) no-repeat 0px -443px;
}
.lawbox>div .waiwen01{
    background: url(../assets/cpzx/pg1_waiwen.jpg) no-repeat 0px 0px;
}
.lawbox>div .waiwen02{
    background: url(../assets/cpzx/pg1_waiwen.jpg) no-repeat 0px -222px;
}
.lawbox>div .waiwen03{
    background: url(../assets/cpzx/pg1_waiwen.jpg) no-repeat 0px -443px;
}
.lawbox>div .wenhua01{
    background: url(../assets/cpzx/pg1_wenhua.jpg) no-repeat 0px 0px;
}
.lawbox>div .wenhua02{
    background: url(../assets/cpzx/pg1_wenhua.jpg) no-repeat 0px -222px;
}
.lawbox>div .wenhua03{
    background: url(../assets/cpzx/pg1_wenhua.jpg) no-repeat 0px -443px;
}
.lawbox.dangjian .dangjian01{
    background: url(../assets/cpzx/pg1_dangjian.jpg) no-repeat 0px 0px;
}
.lawbox.dangjian .dangjian02{
    background: url(../assets/cpzx/pg1_dangjian.jpg) no-repeat 0px -205px;
}
.lawbox.dangjian .gongju01{
    background: url(../assets/cpzx/pg1_gjs.jpg) no-repeat 0px 0px;
}
.lawbox.dangjian .gongju02{
    background: url(../assets/cpzx/pg1_gjs.jpg) no-repeat 0px -205px;
}
div.zonghebox{
    height: 350px;
    display: flex;
}
div.zonghebox a{
    width: 230px;
    height: 338px;
    margin:0 0 10px 0;
    border: 1px #4972b5 solid;
    position: relative;
}
div.zonghebox a span{
    display: block;
    width: 100px;
    height: 60px;
    line-height: 40px;
    font-size: 18px;
    color: #fff;
    text-align: center;
    margin: 0px auto 30px;
    padding-top: 50px;
    border-bottom: 1px #fff solid;
}
div.zonghebox a p{
    width: 180px;
    font-size: 14px;
    color: #c3daff;
    margin: 0px auto;
    line-height: 1.6rem;
    text-align: left;
}
div.zonghebox a.zonghe01{
    background: url(../assets/cpzx/pg1_zh.jpg) no-repeat 0px 0px;
}
div.zonghebox a.zonghe02{
    background: url(../assets/cpzx/pg1_zh.jpg) no-repeat -239px 0px;
}
div.zonghebox a.zonghe03{
    background: url(../assets/cpzx/pg1_zh.jpg) no-repeat -480px 0px;
}
div.zonghebox a.zonghe04{
    background: url(../assets/cpzx/pg1_zh.jpg) no-repeat -719px 0px;
}
div.zonghebox a.zonghe05{
    background: url(../assets/cpzx/pg1_zh.jpg) no-repeat -959px 0px;
}
/* .shadow{
    background: #4972b5;
    height: 100%;
    width: 100%;
    position: absolute;
    top: -338px;
    left: 0px;
    display: none;
} */
/* div.zonghebox a:hover .shadow{
    display: block;
    top: 0px;
    opacity: 0.5;
} */
div.zonghebox a:hover{
    background: #0b2a66;
}
.gongju>div>div>a,.dangjian>div>div>a{
    background:  url(../assets/cpzx/titbg02.png) no-repeat 0px 0px;
}
</style>