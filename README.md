# Live-edit (vueeditor)

## Current status:
- [x] Implemented back-end (Laravel)
- [x] Implemented front-end (Vue.js)
- [x] Login/User system
- [x] The possibility to create, edit and delete your own documents.
- [x] Implementet websockets

## The remaining steps:
1. Fix a kind of state for the current document being edited. So that users logging in gets the same data as users aleady logged in has.

:exclamation: *Remember to configure your .env-file for the database credentials. Also remember to check the
nuxt.config.js in the front-end folder for the axios baseUrl. Here you have to put the base url for the API (laravel).
Also remember du run the migrations in the back-end*

To run websockets, run: php artisan websockets:init
