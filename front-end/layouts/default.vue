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
  box-sizing: border-box;
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
}

.button-red {
  border: 1px solid #a3a3a3;
  color: #ff4a4a;
}

.button-red:hover {
  color: #fff;
  background-color: #e24a4a;
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
</style>
