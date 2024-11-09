<template>
    <div>
        <h1>{{ post.title }}</h1>
        <p>{{ post.content }}</p>
    </div>
</template>

<script>
export default {
    data() {
        return {
            post: {}
        };
    },
    created() {
        const postId = this.$route.params.id;
        // 데이터를 가져오는 로직 (여기서는 예시로 하드코딩된 데이터를 사용)
        const posts = [
            { id: 1, title: 'First Post', content: 'This is the first post' },
            { id: 2, title: 'Second Post', content: 'This is the second post' }
        ];
        this.post = posts.find(post => post.id == postId);
    }
};
</script>
