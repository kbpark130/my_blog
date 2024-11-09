<template>
    <div>
        <h1>MyHome</h1>
        <router-link to="/create">Create New Post</router-link>
        <div v-for="post in posts" :key="post.id">
            <router-link :to="'/post/' + post.id">{{ post.title }}</router-link>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            posts: [
                { id: 1, title: 'First Post' },
                { id: 2, title: 'Second Post' }
            ]
        };
    }
};
</script>
