<template>
  <div class="dash-container columns">
      <div class="files column">
        <h1>Welcome, {{ user.name }}</h1>
        <h3>Your files:</h3>
        <form class="files-list"  method="post">
          <div class="loading" v-if="loading">
            <img src="../assets/img/loading.png" alt="Loading symbol">
          </div>
          <div v-for="document in documents.data">
          <input type="radio" name="file" v-model="currentDocument" :value="document.id"> <p>{{ document.title }}</p>
          </div>
        </form>
          <div class="files-buttons columns">
            <button class="button-green column" v-on:click="newFile" type="button" name="new">New</button>
            <button class="button-yellow column" v-on:click="editFile" type="button" name="save">Edit</button>
            <button class="button-red column" v-on:click="deleteFile" type="button" name="delete">Delete</button>
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
          <h3>Document title:</h3><input type="text" name="title" v-model="form.title">
        </div>
      <no-ssr>
        <vue-editor class="editor" v-model="form.body"></vue-editor>
      </no-ssr>
      <button class="button-green" v-on:click="saveFile" type="button" name="save">Save</button>
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
    data() {
      return {
        documents: [],
        loading: true,
        socket: {},
        currentDocument: '',
        form: {
          title: '',
          body: '',
          user_id: this.$auth.user.id
        }
      }
    },
    computed: {
    formBody() {
      return this.form.body;
    }
  },
    watch: {
      formBody() {
          this.socket.send(this.form.body);
      }
    },
    asyncData() {
      return {
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
      },
      async fetchData() {
        const doc = await this.$axios.get('documents/' + this.user.id)
        this.loading = false;
        return this.documents = doc;
      },
      async newFile() {
          const file = {
            title: 'New file',
            body: 'Write content here...',
            user_id: this.$auth.user.id
          }
        await this.$axios.post('documents', file);
        this.fetchData();
      },
      async editFile() {
        const doc = await this.$axios.get('document/' + this.currentDocument);
        return this.form = doc.data;
      },
      async saveFile() {
        await this.$axios.put('documents/' + this.currentDocument, this.form);
        this.fetchData();
      },
      async deleteFile() {
        await this.$axios.delete('documents/' + this.currentDocument);
        this.fetchData();
      }
    },
    mounted() {
      this.fetchData();

      this.socket = new WebSocket('ws://localhost:1234');

      this.socket.addEventListener('open', e => { console.log('Connection opened') });
      this.socket.addEventListener('close', e => { console.log('Connection closed') });
      this.socket.addEventListener('error', e => { console.log('ERROR') });
      this.socket.addEventListener('message', e => {
        this.form.body = e.data;
      });
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
  display: inline-flex;
  flex-wrap: wrap;
}

.files-buttons, .editor-container button {
  margin: 20px 10px 0;
}

.files-buttons {
  display: flex;
  flex-wrap: wrap;
}

.files-buttons button {
  margin: 10px 20px;
}

.files-list p {
  display: inline-block;
  max-width: 100%;
}

.files-list div {
  flex-basis: 100%;
  display: inline-flex;
  align-items: center;
  overflow-wrap: break-word;
  margin-top: 10px;
}

.files-list div input {
  margin-right: 10px;
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

.loading img {
  width: 100px;
  animation: rotating 1000ms infinite;
}

@keyframes rotating {
  from {transform: rotate(0deg);}
    to {transform: rotate(360deg);}

}


</style>
