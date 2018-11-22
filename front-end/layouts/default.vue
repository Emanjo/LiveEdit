<template>
  <div>
    <nuxt/>
  </div>
</template>

<style>
@import "../assets/css/normalize.css";

html {
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont,
    "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  color: #35495e;
  background-color: #eeeeee;
  min-height: 100vh;
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

.button-green,
.button-red {
  display: inline-block;
  border-radius: 4px;
  padding: 10px 30px;
  background-color: inherit;
}

.button-green {
  border: 1px solid #a3a3a3;
  color: #00de07;
}

.button-green:hover {
  color: #fff;
  background-color: #51b759;
  cursor: pointer;
}

.button-red {
  border: 1px solid #a3a3a3;
  color: #ff4a4a;
}

.button-red:hover {
  color: #fff;
  background-color: #e24a4a;
  cursor: pointer;
}

.title {
  display: block;
  font-weight: 300;
  font-size: 100px;
  letter-spacing: 1px;
  margin: 0 auto 10px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  word-spacing: 5px;
  margin-bottom: 40px;
}

.container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;
  max-width: 700px;
  margin: 0 auto;
}

.form {
  display: flex;
  flex-direction: column;
  background-color: white;
  padding: 50px 200px;
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
}

.input-error {
  border: 1px solid red;

}

form button {
  margin: 30px auto 0;
}

.errorMessage {
  color: red;
  align-self: flex-start;
  margin-bottom: 10px;
  font-size: 0.8em;
}

ul, ol {
  list-style: none;
  padding: 0;
}


</style>
