<template>
  <div class="dash-container columns">
      <div class="files column">
        <h1>Welcome, {{ user.name }}</h1>
        <h3>Your files:</h3>
        <form class="files-list"  method="post">
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
          <div>
          <input type="radio" name="file" value="dummy"> <p>dummy</p>
          </div>
        </form>
          <div class="files-buttons columns">
            <button class="button-green column" type="button" name="new">New</button>
            <button class="button-yellow column" type="button" name="save">Edit</button>
            <button class="button-red column" type="button" name="delete">Delete</button>
          </div>
      </div>

    <div class="editor-container column is-two-thirds">
        <h1 class="title">
          Live-edit
        </h1>
        <h2 class="subtitle">
          Edit text with people in real-time
        </h2>
        <div class="doc-title-container">
          <h3>Document title:</h3><input type="text" name="title" v-model="title">
        </div>
      <vue-editor class="editor" v-model="content"></vue-editor>
      <button class="button-green" type="button" name="save">Save</button>
    </div>

    <button @click.prevent="logout" class="logout-btn">Log out</button>
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
        content: 'Write some text here...',
        title: 'Document title',
        pageIsMounted: false,
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
  border-radius: 5px;
}

.logout-btn:hover {
  background-color: white;
  border: red solid 1px;
  color: red;
  cursor: pointer;
}

.logout-btn:active {
  box-shadow: 0px 0px 3px 1px darkred inset;
  transform:scale(0.97);
}

.dash-container {
  padding: 100px 100px 0 100px ;
  text-align: center;

}

 .editor {
}

.files {
  margin-right: 40px;
  margin-bottom: 40px;
  width: 300px;
}

.files-list {
  background: white;
  padding: 40px;
  border-radius: 20px;
  margin-top: 20px;
}

.files-buttons, .editor-container button {
  margin: 20px 10px 0;
}

.files-buttons button {
  margin: 0 20px;
}

.files-list p {
  display: inline-block;
  max-width: 100%;
}

.files-list div {
  width: 50%;
  margin: auto;
  overflow-wrap: break-word;
}

.files-list div input {
  margin-right: 5px;
}

.editor-container {
  max-width: 900px;
}

.editor {
  text-align: left;
  background: white;
}

.files h1 {
  font-size: 1.6em;
  font-weight: lighter;
}

.doc-title-container {
  display: flex;
  margin-bottom: 20px;
}

.doc-title-container input {
  flex-grow: 1;
  font-size: 1.5em;
  margin-left: 10px;
  border-radius: 5px;
  border: darkgrey solid 1px;
  padding-left: 3px;
}

.doc-title-container h3 {
  font-size: 1.5em;
  color: darkgrey;
}


</style>
