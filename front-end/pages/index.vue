<template>
  <section class="container">
    <div>
      <h1 class="title">
        Live-edit
      </h1>
      <h2 class="subtitle">
        Edit text with people in real-time
      </h2>
      <form v-on:submit.prevent="logIn" class="form" action="" method="post">
        <h2 class="form-title">Log in</h2>
        <label class="form-label" for="username">Username:</label>
        <input v-model="username" class="form-input" type="text" id="username">
        <label class="form-label" for="password">Password:</label>
        <input v-model="password" class="form-input" type="password" id="password">
        <button class="button-green" type="submit">Sign in</button>
        <small>Don't have an account yet? <nuxt-link to="/sign-up" class="link">Sign up here.</nuxt-link></small>
      </form>
    </div>
  </section>
</template>

<script>
import Logo from "~/components/Logo.vue";

export default {
  components: {},
  data() {
    return {
      username: "",
      password: ""
    };
  },
  methods: {
    logIn() {}
  }
};
</script>

<style>
.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.form {
  display: flex;
  flex-direction: column;
  background-color: white;
  padding: 50px;
  border-radius: 5px;
}

.form-title {
  font-weight: normal;
  margin: 20px 0;
  font-size: 2em;
  margin-top: 0;
}

.form-label {
  align-self: flex-start;
  margin-bottom: 10px;
}

.form-input {
  margin-bottom: 10px;
  border-radius: 4px;
  border: 1px solid #a3a3a3;
  min-height: 30px;
  font-size: 1.2em;
  overflow: visible;
}

form button {
  margin: 30px auto 0;
}

small {
  margin-top: 30px;
}

.link {
  text-decoration: none;
  font-weight: bold;
  font-style: italic;
}
</style>
