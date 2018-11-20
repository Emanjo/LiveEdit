<template>
  <div class="container">
    <h1 class="title">
      Live-edit
    </h1>
    <h2 class="subtitle">
      Edit text with people in real-time
    </h2>
    <form v-on:submit.prevent="logIn" class="form" action="" method="post">
      <h2 class="form-title">Sign up</h2>
      <div v-if="errorShow" class="warning">
        <p>{{ errorMessage }}</p>
      </div>
      <label class="form-label" for="email">Email:</label>
      <input v-model="email" class="form-input" type="text" id="email">
      <label class="form-label" for="password">Password:</label>
      <input v-model="password" class="form-input" type="password" id="password">
      <label class="form-label" for="reEnterPassword">Re-enter password:</label>
      <input v-model="reEnterPassword" class="form-input" type="password" id="reEnterPassword">
      <button class="button-green" type="submit">Sign up</button>
    </form>
  </div>
</template>

<script>
  export default {

  }
</script>

<style scoped>

</style>
