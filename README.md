# ENTR-451 Homework #4

Full instructions at https://entr451.com/homework-4/

# TODO
## User Stories
For this assignment, we are taking the previous assignment which was just for your personal use, and modifying it to allow for multiple users.  Some aspects of the user stories below are already complete.

- [x] As a non-logged-in user, I want to see "Login" and "Signup" links.
- [x] As a non-logged-in user, I want to login with my email and password and be redirected to the "Places" page.
- [x] As a non-logged-in user, I want to be redirected to the login page if I don't provide the correct email and password combination.
- [x] As a user, I want to see my username so I can feel confident that I am logged in.
- [x] As a user, I want to be logged out when I click "Logout" and be redirected to the login page.
- [ ] As a user, I want to see a list of places.
- [ ] As a user, I want to be able to add a new place.
- [ ] As a user, I want to create a log of things I did (posts) when I visited each place, so I can remember the things I did there.
- [ ] As a user, I want each log entry (post) to have a title, long description, posted on date, and optional image, so I can summarize the post for easy reference, write a long entry about my experiences, and know when it happened.
- [ ] As a user, I want to be able to click on a place and see the name of the place and all of the things I did there (my posts).
- [ ] As a user, I do not want to see any other users' posts.

## Rubric (20 points)
Complete all user stories along with the following specific functionality.

- (6 points) User Authentication
	- [x] When creating new users, save a 1-way encrypted hash of the password using Bcrypt.
	- [x] Complete the login form
	- [x] Use the appropriate form input types when dealing with any password data.
	- [x] In the sessions controller, authenticate the user by email and password. If successful, "log them in" (i.e. assign the user's id to the session hash) and redirect to the places index. If unsuccessful, redirect back to login.
	- [x] Use @current_user to conditionally show the login/signup links or a logout button (<%= button_to "Logout", "/sessions/logout", method: :delete %>). You will first need to assign @current_user in the global application controller.
	- [x] In the sessions controller, "logout" a logged-in user (i.e. remove the user's id from the session hash) and redirect to login.
- (3 points) User Authorization
	- [ ] Only show the new post form to logged-in users (i.e. if there is a @current_user).
	- [ ] Assign new posts to the logged-in user (aka @current_user).
	- [ ] Only show posts created by the logged-in user (aka @current_user). Hide all other users' posts. (Note: logged-out users should also not be able to see other users' posts).
- (5 points) Frontend with Bootstrap
	- [ ] Install Bootstrap including both the <link> (in the <head> before any custom stylesheets) and the <script> (just before the closing </body>).
	- [ ] Add Bootstrap's navbar component (any version). Move the relevant links (e.g. "Home", "Login", "Signup", "Logout") into the navbar.
	- [ ] Wrap the <%= yield %> content in a Bootstrap .container.
	- [ ] Using the Bootstrap button component, style the links to forms and the form submit buttons.
	- [ ] Use the Bootstrap grid for posts (3 posts per row on large screens, stacking on small screens). See wireframe.
	- [ ] Use the bootstrap spacing (margin or padding) as needed, but at least twice (not counting the navbar).
- (3 points) File Attachment
	- [ ] Configure the application for uploads:
	- [ ] uncomment the image_processing gem in the Gemfile
	- [ ] run rails active_storage:install to create the migrations
	- [ ] then run rails db:migrate to execute the migrations
	- [ ] in both config/environments/development.rb and config/environments/production.rb, tell the application to use the :local service for uploading files (i.e. config.active_storage.service = :local)
	- [ ] Enable attachments in the Post model.
	- [ ] Add a new field to the posts form for uploading an image (form.file_field).
	- [ ] If a post has an attached image (post.image.attached?), display the attached image (url_for(post.image)).
- (2 points) Deployment with Heroku
	- [ ] Follow the steps to connect to Heroku and deploy your app (https://entr451.com/deployment-with-heroku/)
	- [ ] Once live, add the URL to your live heroku website in the README.md file of your app.