<template>
    <div class="container">
      <h1 class="title">
        Live-edit
      </h1>
      <h2 class="subtitle">
        Edit text with people in real-time
      </h2>
      <form @submit.prevent="submit" class="form" method="post" action="#">
        <h2 class="form-title">Log in</h2>
        <label class="form-label" for="email">Email:</label>
        <input v-model="form.email" class="form-input" :class="{'input-error': errors.email}" type="email" id="email" autofocus>
        <p class="errorMessage" v-if="errors.email">{{ errors.email[0] }}</p>
        <label class="form-label" for="password">Password:</label>
        <input v-model="form.password" class="form-input" :class="{'input-error': errors.email}" type="password" id="password" >
        <p class="errorMessage" v-if="errors.password">{{ errors.password[0] }}</p>
        <button class="button-green" type="submit">Sign in</button>
        <small>Don't have an account yet? <nuxt-link :to="{name: 'sign_up'}" class="link">Sign up here.</nuxt-link></small>
      </form>
    </div>
</template>

<script>
  export default {
    middleware: 'guest',
    data() {
      return {
          form: {
              email: '',
              password: ''
          }
      }
    },
    methods: {
       async submit() {
         await this.$auth.login({
           data: this.form
         })

         this.$router.push({
           path: '/dashboard'
         })

      }
    }
  }
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
