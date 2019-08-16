<template>
    <div class="zhuanti">
        <div class="tit_w">
            <span class="tit_blod">专题推荐阅读</span>
        </div>
        <div class="zhuanti_content">
            <div class="xueke">
                <h4>学科专题</h4>
                <div>
                    <ul>
                        <li><a href="http://lawnew.cnki.net">法理法史</a></li>
                        <li><a href="http://lawnew.cnki.net">宪法</a></li>
                        <li><a href="http://lawnew.cnki.net">行政法</a></li>
                        <li><a href="http://lawnew.cnki.net">民商法</a></li>
                        <li><a href="http://lawnew.cnki.net">经济法</a></li>
                        <li><a href="http://lawnew.cnki.net">环保法</a></li>
                        <li><a href="http://lawnew.cnki.net">刑法</a></li>
                        <li><a href="http://lawnew.cnki.net">犯罪学</a></li>
                        <li><a href="http://lawnew.cnki.net">诉讼法</a></li>
                        <li><a href="http://lawnew.cnki.net">司法制度</a></li>
                        <li><a href="http://lawnew.cnki.net">国际法</a></li>
                        <li><a href="http://lawnew.cnki.net">安全军事</a></li>
                        <li><a href="http://lawnew.cnki.net">公安</a></li>
                        <li><a href="http://lawnew.cnki.net">法学综合</a></li>
                    </ul>
                </div>
            </div>
            <div class="zhineng">
                <div class="mid_tit">
                    <div class="mid_titfl">本周焦点解读</div>
                    <h5>人工智能专题</h5>
                    <div>
                        <a href="javascript:;">焦点回顾</a>
                    </div>
                    <p>随着智能化的进程不断加快，人工智能开始逐步实现并开始渗入人们的日常生活。从我国的经济社会发展的现实需求来看，人工智能与物联网、大数据、云服务等一并成为建设智能社会的关键技术支撑。</p>
                </div>
                <div class="mid_ztbor">
                    <ul>
                        <li>
                            <span>学术趋势：</span>
                            <a href="javascript:;">人工智能应用</a>
                            <a href="javascript:;">人工智能风险</a>
                        </li>
                        <li>
                            <span>关 键 词 ：</span>
                            <a href="javascript:;">人工智能责任</a>
                            <a href="javascript:;">人工智能创作物</a>
                        </li>
                        <li>
                            <span>焦点问题：</span>
                            <a href="javascript:;">人工智能影响</a>
                            <a href="javascript:;">法律人格</a>
                        </li>
                        <li>
                            <span>法律法规：</span>
                            <a href="javascript:;">人工智能发展规划的通知</a>
                        </li>
                    </ul>
                    <p>热点解读</p>
                    <ul class="ul-nth2">
                        <li><a href="javascript:;">人工智能在安防领域的深度应用</a></li>
                        <li><a href="javascript:;">人工智能生成技术方案的可专利性及权利归属</a></li>
                        <li><a href="javascript:;">人工智能武器对国际人道法的新挑战</a></li>
                        <li><a href="javascript:;">人工智能法律主体批判</a></li>
                        <li><a href="javascript:;">人工智能时代机器人异化与刑事责任</a></li>
                        <li><a href="javascript:;">基于人工智能犯罪与网络犯罪</a></li>
                        <li><a href="javascript:;">互联网+人工智能全新时代的刑事风险</a></li>
                        <li><a href="javascript:;">人工智能伦理与法律风险的探析</a></li>
                    </ul>
                    <p>最新动态</p>
                    <ul class="ul-last">
                        <li><a href="javascript:;">智慧政法 “智”从何来</a></li>
                        <li><a href="javascript:;">人工智能让城市更有安全感</a></li>
                        <li><a href="javascript:;">刚柔兼济治理人工智能网络社会</a></li>
                        <li><a href="javascript:;">人工智能依法规制难题待解</a></li>
                        <li><a href="javascript:;">“大数据+人工智能”助力矛盾纠纷多元化解</a></li>
                        <li><a href="javascript:;">人工智能时代的法律挑战</a></li>
                    </ul>
                </div>
            </div>
            <div class="yewu">
                <h4>新型业务专题</h4>
                <ul>
                    <li class="li_bg1"><a href="javascript:;">互联网法院业务专题</a></li>
                    <li class="li_bg2"><a href="javascript:;">公益诉讼专题</a></li>
                    <li class="li_bg3"><a href="javascript:;">人民调解专题</a></li>
                    <li class="li_bg4"><a href="javascript:;">人工智能专题</a></li>
                </ul>
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
.zhuanti_content{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.zhuanti_content>div{
    height: 470px;
}
.zhuanti_content .xueke,.zhuanti_content .yewu{
    width: 200px;
}
.zhuanti_content .xueke div{
    border: solid #c7c7c7 1px;
}
.zhuanti_content .xueke ul{
    display: flex;
    flex-wrap: wrap;
    padding-left: 20px;
}
.zhuanti_content .xueke ul li{
    width: 50%;
    list-style: none;
    line-height: 57px;
    text-align: left;
}
.zhuanti_content .xueke ul li a{
    color: #333;
    font-size: 14px;
}
.zhuanti_content .xueke ul li a:hover{
    color:#1b66e6;
}
.zhuanti_content .zhineng{
    width: 740px;
}
.mid_tit{
    height: 110px;
    position: relative;
    background: url(../assets/index/mid_zt.jpg) no-repeat 0px 0px;
}
.mid_titfl{
    position: absolute;
    height: 35px;
    line-height: 35px;
    color: #FFF;
    width: 120px;
    border-radius: 0px 20px 20px 0px;
    background-color: #f39c11;
    text-align: center;
    top: 0px;
    left: 0px
}
.mid_tit a{
    color: #FFF;
    background-color: #f39c11;
    display: block;
    position: absolute;
    height: 35px;
    line-height: 35px;
    width: 120px;
    border-radius: 20px 0px 0px 20px;
    text-align: center;
    top: 0px;
    right: 0px;
}
.zhuanti_content .zhineng .mid_tit h5{
    font-size: 18px;
    color: #FFF;
    text-align: center;
    line-height: 45px;
    font-weight: normal;
}
.zhuanti_content .zhineng .mid_tit p{
    color: #e9f3ff;
    text-indent: 2em;
    padding: 5px 20px 0px;
    line-height: 25px;
    font-size: 14px;
    text-align:left;
}
.zhuanti_content .zhineng .mid_ztbor{
    height:350px;
    border-left: 1px #c7c7c7 solid;
    border-right: 1px #c7c7c7 solid;
    border-bottom: 1px #c7c7c7 solid;
}
.mid_ztbor li{
    height: 28px;
    font-size: 14px;
    width: 50%;
    line-height: 28px;
    list-style: none;
    text-align: left;
}
.mid_ztbor ul li a{
    color: #333;
}
.mid_ztbor ul:first-child li a{
    font-size: 14px;
    color: #1980ff;;
}
.mid_ztbor ul li a:hover{
    color: #1980ff;
}
.mid_ztbor .ul-nth2,.mid_ztbor .ul-last{
    margin-left: 20px;
}
.mid_ztbor .ul-nth2 >li,.mid_ztbor .ul-last >li{
    list-style-type: disc;
    color: #c7c7c7;
    padding-left: 0
}
.mid_ztbor p{
    padding: 0 20px;
    font-size: 16px;
    color: #1980ff;
    text-align: left;
}
.zhineng ul{
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    padding: 13px 20px 4px 20px;
}
.zhuanti_content .yewu ul{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.zhuanti_content .yewu ul li{
    list-style: none;
    margin-bottom: 12px;
    border-radius: 10px;
}
.zhuanti_content .yewu ul li a{
    display: block;
    width: 200px;
    height: 93px;
    line-height: 93px;
    text-align: center;
    color: #FFF;
    font-size: 16px;
}
.zhuanti_content .yewu ul li.li_bg1{
    background: url(../assets/index/sid_fryw_1.jpg);
}
.zhuanti_content .yewu ul li.li_bg2{
    background: url(../assets/index/sid_fryw_2.jpg);
}
.zhuanti_content .yewu ul li.li_bg3{
    background: url(../assets/index/sid_fryw_3.jpg);
}
.zhuanti_content .yewu ul li.li_bg4{
    background: url(../assets/index/sid_fryw_4.jpg);
}
</style>