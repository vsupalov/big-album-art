import Vue from 'vue'
import Router from 'vue-router'
import Art from '@/components/AlbumArt'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Art',
      component: Art
    }
  ]
})
