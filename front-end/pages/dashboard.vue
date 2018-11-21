<template>
  <div>
    <button @click.prevent="logout" class="logout-btn">Logout</button>
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

.logout-btn {
  padding: 10px;
  background-color: red;
  color: white;
}

</style>
