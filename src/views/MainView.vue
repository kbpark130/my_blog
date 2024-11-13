<template>
  <div id="app">
    <header>
      <h1>맛집블로그</h1>
      <div class="search-bar">
        <input
          type="text"
          placeholder="검색어를 입력하세요"
          v-model="searchQuery"
        />
        <button @click="search">검색</button>
      </div>
      <div class="header-right">
        <button @click="newPost" class="new-post">New Post</button>
        <div class="user-nickname">@{{ userNickname }}</div>
      </div>
    </header>
    <main>
      <div class="posts-grid">
        <div class="post" v-for="post in filteredPosts" :key="post.id">
          <div class="post-header">
            <div class="title">{{ post.title }}</div>
            <div class="nickname">@{{ post.nickname }}</div>
          </div>
          <img :src="post.image" alt="Food Image" />
          <div class="restaurant">{{ post.restaurant }}</div>
          <div class="likes">❤️ Like {{ post.likes }}</div>
        </div>
      </div>
    </main>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchQuery: '',
      userNickname: 'User123', // 로그인한 사용자의 닉네임
      posts: [
        {
          id: 1,
          nickname: 'abcd',
          title: '맛있는 떡볶이',
          image: 'tteokbokki.jpg',
          restaurant: '경기대 근처 떡볶이',
          likes: 25,
        },
        {
          id: 2,
          nickname: 'puppy',
          title: '타코 맛집',
          image: 'taco.jpg',
          restaurant: '타코 맛집 최고!',
          likes: 10,
        },
        {
          id: 3,
          nickname: 'lmcat',
          title: '피자 홈',
          image: 'pizza.jpg',
          restaurant: '수제 피자집 피자 홈 강추!',
          likes: 5,
        },
        {
          id: 4,
          nickname: 'hamstar',
          title: '엄마의 김치찌개',
          image: 'kimchi.jpg',
          restaurant: '엄마 손맛 가득한 김치찌개집',
          likes: 14,
        },
        {
          id: 5,
          nickname: 'boxfox',
          title: '초밥 일식',
          image: 'sushi.jpg',
          restaurant: '스시 일식 맛집',
          likes: 14,
        },
        {
          id: 6,
          nickname: 'tigerrrr',
          title: '경기 중식',
          image: 'jjajang.jpg',
          restaurant: '경기 중식 짜장면 맛있어요 추천!!',
          likes: 18,
        },
      ],
    };
  },
  computed: {
    filteredPosts() {
      return this.posts.filter(
        (post) =>
          post.title.includes(this.searchQuery) ||
          post.restaurant.includes(this.searchQuery)
      );
    },
  },
  methods: {
    search() {
      // 검색 결과는 실시간으로 반영되므로 여기는 비워둡니다
    },
    newPost() {
      // 새로운 글 작성 페이지로 이동하는 기능 추가
    },
  },
};
</script>

<style>
#app {
  font-family: Arial, sans-serif;
  text-align: center;
}

header {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 20px;
  position: relative;
}

.search-bar {
  display: flex;
  align-items: center;
  margin: 10px 0;
}

.search-bar input {
  padding: 5px;
  margin-right: 10px;
}

.header-right {
  display: flex;
  align-items: center;
  position: absolute;
  right: 20px;
  top: 20px;
}

.new-post {
  padding: 10px 20px;
  background-color: black;
  color: white;
  border: none;
  cursor: pointer;
  margin-right: 20px;
}

.user-nickname {
  font-weight: bold;
}

.posts-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 20px;
  padding: 20px;
}

.post {
  border: 1px solid #ccc;
  padding: 10px;
  text-align: left;
  position: relative; /* 추가 */
}

.post-header {
  display: flex;
  justify-content: space-between; /* 제목과 닉네임을 양쪽 끝에 배치 */
  align-items: center;
}

.post img {
  width: 100%;
  height: auto;
}

.nickname {
  font-weight: bold;
  position: absolute; /* 추가 */
  top: 10px; /* 추가 */
  right: 10px; /* 추가 */
}

.likes {
  color: #ff69b4;
}
</style>
