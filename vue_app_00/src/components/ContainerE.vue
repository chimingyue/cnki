<template>
<div>
    <div class="tuijian">
        <div class="tit_w">
            <span class="tit_blod">专题推荐阅读</span>
        </div>
        <!-- 循环 v-for -->
        <div class="law_ku">
            <div>
                <p>
                    <span>最新法规</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist1" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>案例分析</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist2" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>指导性案例</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist3" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>核心期刊最新发文</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist4" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>法制要闻</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist5" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>会议前沿</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist6" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>学位论文</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist7" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>被引排行(2018年以后)</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist8" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>下载排行(2018年以后)</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist9" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
        </div>    
    </div>
    <div class="pufa">
        <div class="tit_w">
            <span class="tit_blod">普法知识</span>
        </div>
        <!-- 循环 v-for -->
        <div class="law_ku">
            <div>
                <p>
                    <span>法条免费查询(new)</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist10" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>法律知识问答</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist11" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>此罪与彼罪</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist12" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>民事案件常见问题</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist13" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>刑事案件常见问题</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist14" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
            <div>
                <p>
                    <span>行政案件常见问题</span>
                    <a href="http://lawnew.cnki.net/kns/brief/result.aspx?dbprefix=CLKLK">更多</a>
                </p>
                <ul v-for="(item,i) of sourcelist15" :key="i">
                    <li class="list">
                        <a :href="item.t_href" class="tit_fl" v-text="item.title"></a>
                        <span v-text="item.out_time"></span>
                    </li>
                </ul>
            </div>
        </div>    
    </div>
</div>
</template>
<script>
export default {
    data(){
        return {
            sourcelist1:[],
            sourcelist2:[],
            sourcelist3:[],
            sourcelist4:[],
            sourcelist5:[],
            sourcelist6:[],
            sourcelist7:[],
            sourcelist8:[],
            sourcelist9:[],
            sourcelist10:[],
            sourcelist11:[],
            sourcelist12:[],
            sourcelist13:[],
            sourcelist14:[],
            sourcelist15:[]
        }
    },
    created() {
        this.axios.get("source").then(result=>{
            for(var i=0;i<6;i++){
                var sourcelist1=result.data.data.slice(0,i);
            }
            this.sourcelist1=sourcelist1;
            for(var i=6;i<11;i++){
                var sourcelist2=result.data.data.slice(5,i);
            }
            this.sourcelist2=sourcelist2;
            for(var i=11;i<16;i++){
                var sourcelist3=result.data.data.slice(10,i);
            }
            this.sourcelist3=sourcelist3;
            for(var i=16;i<21;i++){
                var sourcelist4=result.data.data.slice(15,i);
            }
            this.sourcelist4=sourcelist4;
            for(var i=21;i<26;i++){
                var sourcelist5=result.data.data.slice(20,i);
            }
            this.sourcelist5=sourcelist5;
            for(var i=26;i<31;i++){
                var sourcelist6=result.data.data.slice(25,i);
            }
            this.sourcelist6=sourcelist6;
            for(var i=31;i<36;i++){
                var sourcelist7=result.data.data.slice(30,i);
            }
            this.sourcelist7=sourcelist7;
            for(var i=36;i<41;i++){
                var sourcelist8=result.data.data.slice(35,i);
            }
            this.sourcelist8=sourcelist8;
            for(var i=41;i<46;i++){
                var sourcelist9=result.data.data.slice(40,i);
            }
            this.sourcelist9=sourcelist9;
            for(var i=46;i<51;i++){
                var sourcelist10=result.data.data.slice(45,i);
            }
            this.sourcelist10=sourcelist10;
            for(var i=51;i<56;i++){
                var sourcelist11=result.data.data.slice(50,i);
            }
            this.sourcelist11=sourcelist11;
            for(var i=56;i<61;i++){
                var sourcelist12=result.data.data.slice(55,i);
            }
            this.sourcelist12=sourcelist12;
            for(var i=61;i<66;i++){
                var sourcelist13=result.data.data.slice(60,i);
            }
            this.sourcelist13=sourcelist13;
            for(var i=66;i<71;i++){
                var sourcelist14=result.data.data.slice(65,i);
            }
            this.sourcelist14=sourcelist14;
            for(var i=71;i<76;i++){
                var sourcelist15=result.data.data.slice(70,i);
            }
            this.sourcelist15=sourcelist15;
        })
    },
}
</script>
<style scoped>
.law_ku{
    display: flex;
    flex-wrap: wrap;
}
.law_ku>div{
    margin-bottom: 20px;
}
.law_ku ul{
    padding-left: 20px !important;
}
.law_ku>div ul li{
    width: 350px;
    display: flex;
    justify-content: space-between;
}
.law_ku>div .tit_fl{
    display: block;
    width: 70%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
li.list{
    height: 35px;
    line-height: 35px;
}
.law_ku>div ul li span{
    font-size: 12px;
    color: #8c8c9a;
}
.pufa .tit_w{
    background: url(../assets/index/tit_bg2.jpg)
}
.pufa .law_ku>div p,.pufa .law_ku>div p a{
    color:#22acf3;
}
</style>