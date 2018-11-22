<template>
  <div class="dash-container">

    <section>
      <h1>Welcome, {{ user.name }}</h1>
      <h3>Your files:</h3>
    </section>

    <div class="editor">
        <h1 class="title">
          Live-edit
        </h1>
        <h2 class="subtitle">
          Edit text with people in real-time
        </h2>
      <vue-editor></vue-editor>
    </div>

    <button @click.prevent="logout" class="logout-btn">Logout</button>
  </div>
</template>

<script>

let VueEditor

if (process.browser) {
  VueEditor = require('vue2-editor').VueEditor
}

  export default {
    asyncData() {
      return {
        content: '',
        pageIsMounted: false
      }
    },
    components: { VueEditor },
    middleware: 'auth',
    methods: {
      logout() {
        this.$auth.logout();
      },
      reloadWindow() {
        window.location.reload(true)
      }
    }
  }
</script>

<style scoped>

.logout-btn {
  padding: 10px;
  background-color: #ff4d4d;
  color: white;
  border: none;
  position: absolute;
  top: 40px;
  right: 40px;
  font-size: 1.3em;
  font-weight: bold;
  border-radius: 5px;
}

.logout-btn:hover {
  background-color: white;
  border: red solid 1px;
  color: red;
  cursor: pointer;
}

.logout-btn:active {
  box-shadow: 0px 0px 7px 1px darkred inset;
}


</style>
