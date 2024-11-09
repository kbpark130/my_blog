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
            title: 'CREATE POST',
            content: ''
        };
    },
    methods: {
        createPost() {
            // 데이터를 저장하는 로직 (여기서는 예시로 콘솔에 출력)
            console.log('Post created:', this.title, this.content);
            this.$router.push('/');
        }
    }
};
</script>
