const pkg = require('./package')

module.exports = {
  mode: 'universal',

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: pkg.description }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },

  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },

  /*
  ** Global CSS
  */
  css: [
  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    './plugins/mixins/user',
    './plugins/mixins/validation',
    './plugins/axios'
  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
  '@nuxtjs/axios',
  '@nuxtjs/auth'
  ],

  axios: {
    baseURL: 'http://localhost/liveedit/back-end/public/api'
  },

  auth: {
    endpoints: {
      login: {
        url: 'login', method: 'post', propertyName: 'meta.token'
      },
      user: {
        url: 'me', method: 'get', propertyName: 'data'
      },
      logout: {
        url: 'logout', method: 'post'
      },
    }
  },

  redirect: {
    home: '/dashboard'
  },

  router: {
    middleware: [
      'clearValidationErrors'
    ]
  },

  /*
  ** Build configuration
  */
  build: {
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {

    }
  }
}
