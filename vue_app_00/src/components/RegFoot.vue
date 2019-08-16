<template>
    <div class="footer">
        <ul>
            <li>
                <p>服务热线：400-810-9888  &nbsp;&nbsp;订卡热线：400-819-9993</p>
            </li>
            <li>
                <p>京ICP证040431号 网络出版服务许可证（总）网出证（京）字第271号</p>
            </li>
        </ul>
        <ul>
            <li>
                <p>@2017《中国学术期刊（光盘版）》电子杂志社有限公司</p>
            </li>
            <li>
                <p>京公网安备11010802020460号</p>
            </li>
        </ul>
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
 .footer{
    width: 820px;
    margin: 0 auto;
    padding: 25px 20px 30px;
}
.footer ul{
    display: flex;
    justify-content: space-between;
}
.footer ul li{
    list-style: none;
}
.footer ul li p{
    font-size: 12px;
    text-align: left;
    margin-bottom: 6px;
    color: #666;
}
.footer ul:last-child li:last-child p{
    position: relative;
    top:0px;
    left: -210px;
}   
</style>