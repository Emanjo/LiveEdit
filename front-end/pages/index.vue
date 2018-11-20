<template>
    <div class="container">
      <h1 class="title">
        Live-edit
      </h1>
      <h2 class="subtitle">
        Edit text with people in real-time
      </h2>
      <form v-on:submit.prevent="logIn" class="form" action="" method="post">
        <h2 class="form-title">Log in</h2>
        <div v-if="errorShow" class="warning">
          <p>{{ errorMessage }}</p>
        </div>
        <label class="form-label" for="username">Username:</label>
        <input v-model="username" class="form-input" type="text" id="username">
        <label class="form-label" for="password">Password:</label>
        <input v-model="password" class="form-input" type="password" id="password">
        <button class="button-green" type="submit">Sign in</button>
        <small>Don't have an account yet? <nuxt-link to="/sign-up" class="link">Sign up here.</nuxt-link></small>
      </form>
    </div>
</template>

<script>
import Logo from "~/components/Logo.vue";

export default {
  components: {},
  data() {
    return {
      username: "",
      password: "",
      errorShow: false,
      errorMessage: '',
    };
  },
  methods: {
    logIn() {

      if (this.username === "" || this.password === "") {
        this.errorMessage = "You need to fill all fields";
        this.errorShow = true;
      } else {
        const baseUrl =
          window.location.protocol +
          "//" +
          window.location.hostname +
          "/liveedit/back-end/public/api";

        const axios = require('axios');

        axios
        .get(baseUrl + "/users")
        .then(response => {
          // handle success
          const user = response.data.find(el => el.email === this.username);

          console.log(user);

          if ( typeof(user) === "undefined" ) {
            this.errorShow = true;
            this.errorMessage = "No user with that email is found!";
          } else {
            this.errorShow = false;
          }

        })
        .catch(error => {
          // handle error
          console.log(error);
        });
      }
    }
  }
};
</script>

<style scoped>

  small {
    margin-top: 30px;
  }

  .link {
    text-decoration: none;
    font-weight: bold;
    font-style: italic;
  }

</style>
