<template>
  <div class="dash-container">
      <div class="files">
        <h1>Welcome, {{ user.name }}</h1>
        <h3>Your files:</h3>
        <form class="files-list"  method="post">
          <div>
          <input type="radio" name="file" value="dummy"> dummydummydummydummydummydummydummydummydummy
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> dummy
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> dummy
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> dummy
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> dummy
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> dummy
          </div>
        </form>

      </div>

    <div class="editor-container">
        <h1 class="title">
          Live-edit
        </h1>
        <h2 class="subtitle">
          Edit text with people in real-time
        </h2>
      <vue-editor class="editor"></vue-editor>
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

.dash-container {
  padding: 100px ;
  text-align: center;
  display: flex;
  justify-content: space-between;
  align-items: stretch;
  flex-wrap: wrap;

}

.files {
  margin-right: 40px;
  margin-bottom: 40px;
}

.files-list {
  display: flex;
  flex-direction: column;
  background: white;
  padding: 40px;
  border-radius: 20px;
  margin-top: 20px;

}

.editor-container {
  max-width: 900px;
}

.editor {
  text-align: left;
  background: white;
}


</style>
