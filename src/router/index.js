import { createRouter, createWebHistory } from 'vue-router'
import Main_Vue from '../views/Main_Vue.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Main_Vue
    },
    {
      path: '/Experience',
      name: 'Experience',
      component: () => import('../views/Experience.vue')
    }
  ]
})

export default router
