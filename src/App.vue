<template>
  <div id="app">
    <header>
      <h1>Vue Blog</h1>
      <nav>
        <router-link to="/">MyHome</router-link>
        <router-link to="/create">Create New Post</router-link>
      </nav>
    </header>
    <main>
      <router-view />
    </main>
  </div>
</template>

<script>
// import MyHome from './components/MyHome.vue'

export default {
  name: 'App',
  // components: {
  //   MyHome
  // }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

nav {
  display: flex;
  justify-content: center;
  gap: 10px;
}

nav a {
  text-decoration: none;
  color: #42b983;
}

nav a.router-link-exact-active {
  font-weight: bold;
}
</style>

