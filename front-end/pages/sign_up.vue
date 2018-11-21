<template>
  <div class="container">
    <h1 class="title">
      Live-edit
    </h1>
    <h2 class="subtitle">
      Edit text with people in real-time
    </h2>
    <form @submit.prevent="register" class="form" action="" method="post">
      <h2 class="form-title">Sign up</h2>
      <label class="form-label" for="name">Name:</label>
      <input v-model="form.name" class="form-input" :class="{'input-error': errors.name}" type="text" id="name">
      <p class="errorMessage" v-if="errors.name">{{ errors.name[0] }}</p>
      <label class="form-label" for="email">Email:</label>
      <input v-model="form.email" class="form-input" :class="{'input-error': errors.email}" type="text" id="email">
      <p class="errorMessage" v-if="errors.email">{{ errors.email[0] }}</p>
      <label class="form-label" for="password">Password:</label>
      <input v-model="form.password" class="form-input" :class="{'input-error': errors.password}" type="password" id="password">
      <p class="errorMessage" v-if="errors.password">{{ errors.password[0] }}</p>
      <label class="form-label" for="reEnterPassword">Re-enter password:</label>
      <input v-model="reEnterPassword" class="form-input" :class="{'input-error': isMatch}" type="password" id="reEnterPassword">
      <p class="errorMessage" v-if="isMatch">The passwords don't match!</p>
      <button class="button-green" type="submit">Sign up</button>
    </form>
  </div>
</template>

<script>
  export default {
    middleware: 'guest',
    data() {
      return {
        form: {
          name: '',
          email: '',
          password: '',
        },
        reEnterPassword: '',
        isMatch: false,
      }
    },
    methods: {
      async register() {

        if (this.form.password !== this.reEnterPassword) {
          console.log('Passwords do not match')
          this.isMatch = true;
        } else {
          this.isMatch = false;

          await this.$axios.post('register', this.form)

          await this.$auth.login({
            data: this.form
          })

          this.$router.push({
            path: '/dashboard'
          })
        }


      }
    }

  }
</script>

<style scoped>

</style>
