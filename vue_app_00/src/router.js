import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Registe from './components/Registe'
import Login from './components/Login'
import Mlaw from './components/Mlaw'
import CpzxIndex from './components/CpzxIndex'
import CpzxHangye from './components/CpzxHangye'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Home},
    {path:'/Registe',component:Registe},
    {path:'/Login',component:Login},
    {path:'/Mlaw',component:Mlaw},
    {path:'/CpzxIndex',component:CpzxIndex},
    {path:'/CpzxHangye',component:CpzxHangye}
  ]
})
