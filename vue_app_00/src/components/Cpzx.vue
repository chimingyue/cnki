<template>
    <div class="cpzx_index">
        <div class="hdbg">
            <div class="contain">
                <div class="header">
                    <div class="logo"></div>
                    <ul>
                        <li><router-link to="/">首页</router-link></li>
                        <li><a href="http://lawnew.cnki.net/">法库</a></li>
                        <li><a href="#">体验中心</a></li>
                        <li><a href="#">订购咨询</a></li>
                    </ul>
                </div>
                <h3>CNKI法律产品中心</h3>
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
.hdbg{
    width:100%;
    background-color: #0e1328;
}
.hdbg .contain{
    background: url(../assets/cpzx/headerbg.jpg) center 0px no-repeat;
    width: 1200px;
    height: 380px;
    margin: 0px auto;
}
.hdbg .contain .header{
    display: flex;
    justify-content: space-between;
}
.hdbg .contain .logo{
    width: 170px;
    height: 60px;
    margin-top: 15px;
    background: url(../assets/cpzx/logo.png) no-repeat 0px 0px;
}
.hdbg .contain .header ul{
    width: 400px;
    line-height: 80px;
    height: 80px;
    display: flex;
    justify-content: space-between;
}
.hdbg .contain .header ul li{
    list-style: none;
}
.hdbg .contain .header ul li a{
    color: #969aa4;
    font-size: 16px;
}
.hdbg .contain .header ul li a:hover{
    color: #fff;
}
.hdbg .contain h3{
    font-size: 38px;
    color: #00a3fe;
    padding-top: 100px;
    padding-left: 65px;
    font-weight: normal;
    line-height: 1.6em;
    text-align: left;
}
</style>