# Live-edit (vueeditor)

## Current status:
Implemented both back-end(Laravel) and front-end(Vue.js).
Login/User system is working fine.
The possibility to create, edit and delete your own documents is also working.

## The remaining steps:
1. Implement websockets for live communication with other users.

*Remember to configure your .env-file for the database credentials. Also remember to check the
nuxt.config.js in the front-end folder for the axios baseUrl. This url needs to be the same as the
base of the laravel api(back-end) you are hosting localy.*
