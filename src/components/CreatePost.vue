<template>
  <div>
    <h1>Create New Post</h1>
    <form @submit.prevent="createPost">
      <input v-model="title" placeholder="Title" />
      <textarea v-model="content" placeholder="Content"></textarea>
      <button type="submit">Create</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: '',
      content: ''
    };
  },
  methods: {
    createPost() {
      // Post 생성 로직 (예시로 Local Storage 사용)
      const posts = JSON.parse(localStorage.getItem('posts')) || [];
      const newPost = { id: Date.now(), title: this.title, content: this.content };
      posts.push(newPost);
      localStorage.setItem('posts', JSON.stringify(posts));
      this.$router.push('/');
    }
  }
};
</script>
