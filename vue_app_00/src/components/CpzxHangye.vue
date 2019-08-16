<template>
    <div>
        <cpzx></cpzx>
        <!-- 导航 -->
        <div class="hdnavbg">
            <ul>
                <li><router-link to="/CpzxIndex" >数据中心</router-link></li>
                <li><router-link to="/CpzxHangye" class="active">行业知识服务平台</router-link></li>
                <li><router-link to="/CpzxSifa">智慧司法解决方案</router-link></li>
                <li><router-link to="/CpzxMobile">移动端产品</router-link></li>
                <li><router-link to="/CpzxIndex">典型案例</router-link></li>
            </ul>
        </div>
        <div class="cpzxcontent">
            <h4 class="dangjianh">行业知识服务平台</h4>
            <div class="lawbox dangjian  hangye">
                <div>
                    <div class="dangjian01"><a href="javascript:;">人大工作决策知识服务平台</a></div>
                    <p>
                        《CNKI人大工作决策知识服务平台》是针对我国各级人大机关组织设计的专业立法知识服务平台。平台致力于提高人大机关在科学决策、提案审议、立法评估、立法比较等方面的信息提取效率与知识管理水平，是大数据时代促进人大工作的关键所在。
                    </p>
                </div>
                <div >
                    <div class="dangjian16"><a href="javascript:;">政法委数字图书馆</a></div>
                    <p>
                        《CNKI政法委数字图书馆》，是“中国知网”根据政法委业务工作特点，打造的服务政法机关的知识服务整体解决方案。该平台以党建知识、法律知识为核心，知识来源包括期刊、报纸、学位论文、会议论文等，来源权威、版权规范、追溯完整。
                    </p>
                </div>
                <div >
                    <div class="dangjian02"><a href="javascript:;">法院知识服务平台</a></div>
                    <p>
                        《CNKI法院知识服务平台》根据法院业务流程特点，对知识进行了模块化的开发。包括支持领导决策的法院管理模块、支持法官审判实务工作的业务支持模块、支持干警课题调研的理论研究模块、保障单位文化建设以及满足干警阅读需求的模块。
                    </p>
                </div>
                <div >
                    <div class="dangjian03"><a href="javascript:;">检察院数字图书馆</a></div>
                    <p>
                        《CNKI检察院数字图书馆》，是为检察院公诉业务、调研工作、法律监督服务的数字化图书馆，内容包含法律专业知识，以及相关的经济、计算机、哲学人文、医药卫生等综合学科知识，并提供检察院文化建设需要的文化阅读作品和工具书。
                    </p>
                </div>
                <div >
                    <div class="dangjian04"><a href="javascript:;">司法工作决策知识服务平台</a></div>
                    <p>
                        《CNKI司法工作决策知识服务平台》，针对司法行政机关的主要工作集成了政府决策信息参考、业务资料学习、常用法律信息查询、学科专业知识服务四大知识模块，内容涵盖了政策法规、领导讲话等，有助于司法机关提高决策水平、加强队伍建设。
                    </p>
                </div>
                <div >
                    <div class="dangjian05"><a href="javascript:;">监狱数字图书馆</a></div>
                    <p>
                        《CNKI监狱数字图书馆》，提供监狱学、犯罪学、刑罚执行、改造、刑事执行、社区矫正、循证理论、心理矫治等相关主题的业务知识，覆盖法学、心理学、社会学等多个学科，为监狱干警业务学习、政治学习、课题研究提供完备、精准的知识服务。
                    </p>
                </div>
                <div >
                    <div class="dangjian06"><a href="javascript:;">戒毒知识服务平台</a></div>
                    <p>
                        CNKI戒毒知识服务平台》，内容涵盖了教育戒治相关的政策法规、司法决策理论研究、脱毒治疗方法与效果研究、生理与心理治疗发展动态、教育与管理专家经验等知识类别，全方位提供涉及教育戒治管理、治疗康复、教育等方面的知识服务。
                    </p>
                </div>
                <div >
                    <div class="dangjian15"><a href="javascript:;">CNKI律师数字图书馆</a></div>
                    <p>
                        《CNKI律师数字图书馆》是针对律师行业打造的专业法律知识服务平台，信息全面、知识丰富、功能先进。为律所提供大量的实证材料、学界观点、业界经验，提高律师处理新问题、新业务的能力，加快业务创新。
                    </p>
                </div>
                <div >
                    <div class="dangjian07"><a href="javascript:;">CNKI公证知识服务平台</a></div>
                    <p>
                        《CNKI公证知识服务平台》是针对公证行业打造的专业法律知识服务平台，囊括公证行业信息情报，公证业务所涉及的知识分类汇集，常用法律法规、以及公证业务圈发文推荐、知名公证员查询、公证论坛聚焦、公证阅览室等。
                    </p>
                </div>
                <div >
                    <div class="dangjian08"><a href="javascript:;">司法鉴定知识服务平台</a></div>
                    <p>
                        《CNKI司法鉴定知识服务平台》汇集了司法鉴定实务工作、理论研究、体系发展所需的各类信息资源，打造成集司法鉴定业务支持、法律法规、精选研究成果、整刊阅读四大模块为中心的立体化司法鉴定知识服务平台。全方位提供司法鉴定的知识服务。
                    </p>
                </div>
                <div >
                    <div class="dangjian09"><a href="javascript:;">CNKI仲裁知识服务平台</a></div>
                    <p>
                        《CNKI仲裁知识服务平台》收录了法规、案例、法学论文等，每一篇文献知网节，都汇集了法律条文解读、相关案例应用、专家解读等知识，方便仲裁员撰写仲裁文书。同时，还收录了行业指导合同范本，为处理合同纠纷案件提供文书模板。
                    </p>
                </div>
                <div >
                    <div class="dangjian10"><a href="javascript:;">公安业务数字图书馆</a></div>
                    <p>
                        《CNKI公安业务数字图书馆》汇集了公安各领域学科知识，涵盖治安、刑事、交通、消防、犯罪学、法医学、刑事侦查等内容，包括安全保卫、侦查技术、治安管理、网络监察、交通管理、信息装备、反恐、缉毒等公安业务指导知识资源。
                    </p>
                </div>
                <div >
                    <div class="dangjian11"><a href="javascript:;">消防知识服务智慧云平台</a></div>
                    <p>
                        《CNKI消防知识服务智慧云平台》集“智慧检索、智慧阅读、智慧拓展、智慧建库、智慧学习、协同创新”于一体，为消防行业机构管理决策、队伍建设、业务培训、火灾防控、应急救援、科技发展、研究创新、信息传播等业务需求提供服务支撑。
                    </p>
                </div>
                <div >
                    <div class="dangjian12"><a href="javascript:;">中国法律数字图书馆（高校版）</a></div>
                    <p>
                        《CNKI中国法律数字图书馆（高校版）》整合知网各类型法律资源，在此基础上提供刑法、民法、环境法等法律专题学习、法律学位论文网、法律期刊网、法律焦点学习、科研助手、法律项目查询、学术趋势查询等特色服务，满足教学科研的需求。
                    </p>
                </div>
                <div >
                    <div class="dangjian13"><a href="javascript:;">CNKI企业法务知识服务平台</a></div>
                    <p>
                        《CNKI企业法务知识服务平台》针对企业法务工作者，提供宏观调控制度知识服务，辅助企业掌握产业政策与制度；提供公司运营制度和法规，辅助企业完善运营管理规范；提供相关法规、案例和专家解读，辅助企业防范经营风险。
                    </p>
                </div>
                <div >
                    <div class="dangjian14"><a href="javascript:;">CNKI城管执法知识服务平台</a></div>
                    <p>
                        《CNKI城管执法知识服务平台》为广大城市管理执法从业者提供权威论文资源，辅助业务学习和研究；进行常用法律法规查询，规范执法行为；提供相似案例参考，防范办案风险；推送城市管理行业信息情报；进行移动搜法，随时随地获取法律知识。
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
.dangjianh{
    background: url(../assets/cpzx/colu03.png) no-repeat 160px -944px;
}
.dangjian>div>div>a{
    width: 470px;
    height: 93px;
    line-height: 93px;
    background:  url(../assets/cpzx/titbg02.png) no-repeat 0px 0px;
}
.dangjian01{
    background: url(../assets/cpzx/pg1_hangye1.jpg) no-repeat 0px 0px;
}
.dangjian02{
    background: url(../assets/cpzx/pg1_hangye1.jpg) no-repeat 0px -401px;
}
.dangjian03{
    background: url(../assets/cpzx/pg1_hangye1.jpg) no-repeat 0px -593px;
}
.dangjian04{
    background: url(../assets/cpzx/pg1_hangye4.jpg) no-repeat 0px -548px;
}
.dangjian05{
    background: url(../assets/cpzx/pg1_hangye2.jpg) no-repeat 0px 0px;
}
.dangjian06{
    background: url(../assets/cpzx/pg1_hangye2.jpg) no-repeat 0px -184px;
}
.dangjian07{
    background: url(../assets/cpzx/pg1_hangye2.jpg) no-repeat 0px -367px;
}
.dangjian08{
    background: url(../assets/cpzx/pg1_hangye2.jpg) no-repeat 0px -546px;
}
.dangjian09{
    background: url(../assets/cpzx/pg1_hangye3.jpg) no-repeat 0px 0px;
}
.dangjian10{
    background: url(../assets/cpzx/pg1_hangye3.jpg) no-repeat 0px -182px;
}
.dangjian11{
    background: url(../assets/cpzx/pg1_hangye3.jpg) no-repeat 0px -366px;
}
.dangjian12{
    background: url(../assets/cpzx/pg1_hangye3.jpg) no-repeat 0px -548px;
}
.dangjian13{
    background: url(../assets/cpzx/pg1_hangye4.jpg) no-repeat 0px 0px;
}
.dangjian14{
    background: url(../assets/cpzx/pg1_hangye4.jpg) no-repeat 0px -183px;
}
.dangjian15{
    background: url(../assets/cpzx/pg1_hangye4.jpg) no-repeat 0px -365px;
}
.dangjian16{
    background: url(../assets/cpzx/pg1_hangye1.jpg) no-repeat 0px -205px;
}
</style>