<template>
  <div>
    <h1>MyHome</h1>
    <router-link to="/create">Create New Post</router-link>
    <div v-for="post in posts" :key="post.id">
      <router-link :to="'/post/' + post.id">{{ post.title }}</router-link>
      <router-link :to="'/edit/' + post.id">Edit</router-link>
      <button @click="deletePost(post.id)">Delete</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      posts: []
    };
  },
  created() {
    this.loadPosts();
  },
  methods: {
    loadPosts() {
      this.posts = JSON.parse(localStorage.getItem('posts')) || [];
    },
    deletePost(id) {
      this.posts = this.posts.filter(post => post.id !== id);
      localStorage.setItem('posts', JSON.stringify(this.posts));
    }
  }
};
</script>
