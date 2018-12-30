# Live-edit (vueeditor)

## Current status:
- [x] Implemented back-end (Laravel)
- [x] Implemented front-end (Vue.js)
- [x] Login/User system
- [x] The possibility to create, edit and delete your own documents.
- [x] Websockets

## Remaining steps/bugs to fix:
- Fix a kind of state for the current document being edited. So that users logging in gets the same data as users aleady logged in has.
- The websocket has some bugs when writing to fast. I think it has something to do with the way I set it up inside vue/front-end.
- Add list of current users logged into the UI.

## How to run the application
1. Check/make .env file in the back-end folder and update with database settings etc.
2. check the nuxt.config.js inside the front-end folder for the axios baseUrl (API base url made by the back-end).
3. Inside back-end folder, run "php artisan migrate". This command sets up the database.
4. Inside front-end folder, run "yarn" to install dependencies.
5. Inside front-end folder, run "yarn dev" to run the front-end of the application.
6. Make sure the back-end works by running it inside the XAMMP/MAMP etc. enviroment. Else you could run "npm run dev". This is up to you.
7. To run websockets, run "php artisan websockets:init"

### UX prototype
https://xd.adobe.com/view/8278f245-293d-4faa-6df3-a7cc1edc5155-f449/
