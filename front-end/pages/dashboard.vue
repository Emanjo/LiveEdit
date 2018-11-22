<template>
  <div class="dash-container">
    <button @click.prevent="logout" class="logout-btn">Logout</button>
  <div class="flex-container">
    <div class="col-right">
      <header>
        <h1 class="title">
          Live-edit
        </h1>
        <h2 class="subtitle">
          Edit text with people in real-time
        </h2>
      </header>
      <section class="editor">
      </section>
    </div>

    <section class="files">
      <h1>Welcome, {{ user.name }}</h1>
      <h3>Your files:</h3>
      <ul>
        <li>dummy</li>
        <li>dummy2</li>
        <li>dummy3</li>
        <li>dummy4</li>
      </ul>
    </section>
  </div>
</div>
</template>

<script>

  export default {
    middleware: 'auth',
    methods: {
      logout() {
        this.$auth.logout();
      }
    }
  }
</script>

<style scoped>
.dash-container {
    margin-top: 100px;
    padding-left: 3em;
    padding-right: 3em;
}

.flex-container {
  display: flex;
  justify-content: space-around;
  align-items: stretch;
  text-align: center;
  flex-wrap: wrap;
  flex-direction: row;

}

.col-right {
  order: 2;
  flex-grow: 3;
}

header {
  width: 100%;
}
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

.files ul {
  margin-top: 20px;
  background: white;
  display: inline-block;
  padding: 20px 100px;
  border-radius: 15px;
}

</style>
