import { createRouter, createWebHistory } from 'vue-router';
import MyHome from '../components/MyHome.vue';
import MyPost from '../components/MyPost.vue';
import CreatePost from '../components/CreatePost.vue';

const routes = [
    { path: '/', component: MyHome },
    { path: '/post/:id', component: MyPost },
    { path: '/create', component: CreatePost }
];

const router = createRouter({
    history: createWebHistory(),
    routes
});

export default router;
