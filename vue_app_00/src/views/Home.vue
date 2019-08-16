<template>
  <div class="home">
      <headerNav></headerNav>
      <container></container>
      <footerNav></footerNav>
  </div>
</template>

<script>
import HeaderNav from '../components/HeaderNav.vue'
import Container from './Container.vue'
import FooterNav from '../components/FooterNav.vue'
export default {
  data() {
    return {
     
    }
  },
  components:{
    "headerNav":HeaderNav,
    "container":Container,
    "footerNav":FooterNav
  }
}
</script>
<style scoped>

</style>