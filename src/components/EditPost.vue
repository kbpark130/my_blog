<template>
  <div>
    <h1>Edit Post</h1>
    <form @submit.prevent="updatePost">
      <input v-model="title" placeholder="Title" />
      <textarea v-model="content" placeholder="Content"></textarea>
      <button type="submit">Update</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: '',
      content: '',
      id: null
    };
  },
  created() {
    this.loadPost();
  },
  methods: {
    loadPost() {
      const postId = this.$route.params.id;
      const posts = JSON.parse(localStorage.getItem('posts')) || [];
      const post = posts.find(post => post.id == postId);
      if (post) {
        this.id = post.id;
        this.title = post.title;
        this.content = post.content;
      }
    },
    updatePost() {
      const posts = JSON.parse(localStorage.getItem('posts')) || [];
      const index = posts.findIndex(post => post.id == this.id);
      if (index !== -1) {
        posts[index].title = this.title;
        posts[index].content = this.content;
        localStorage.setItem('posts', JSON.stringify(posts));
        this.$router.push('/');
      }
    }
  }
};
</script>
