<template>
    <div class="container">
        <container-a></container-a>
        <container-b></container-b>
        <container-c></container-c>
        <container-d></container-d>
        <container-e></container-e>
        <container-f></container-f>
    </div>
</template>
<script>
import ContainerA from '../components/ContainerA.vue'
import ContainerB from '../components/ContainerB.vue'
import ContainerC from '../components/ContainerC.vue'
import ContainerD from '../components/ContainerD.vue'
import ContainerE from '../components/ContainerE.vue'
import ContainerF from '../components/ContainerF.vue'
export default {
    data(){
        return {

        }
    },
    components:{
        "container-a":ContainerA,
        "container-b":ContainerB,
        "container-c":ContainerC,
        "container-d":ContainerD,
        "container-e":ContainerE,
        "container-f":ContainerF
    }
}
</script>
<style scoped>
.container{
    width:1200px;
    margin:0 auto;
}
</style>