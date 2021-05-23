# Fwitter Group Project

## Objectives

1.  Build a full scale Sinatra application that uses:

- A sqlite database
- ActiveRecord
- RESTful routes
- Sessions
- Login/Logout

## Overview

The goal of this project is to build Car Dealership that you can sell/buy your car .

You'll be implementing Car-Dealership using multiple objects that interact, including
separate classes for User and Car.

Just like with Dealership, a user should not be able to take any actions (except
sign-up), unless they are logged in. Once a user is logged in, they should be
able to create, edit and delete their own cars, as well as view all the
cars.

There are controller tests to make sure that you build the appropriate
controller actions that map to the correct routes.

### Gemfile and environment.rb

This project is supported by Bundler and includes a `Gemfile`.

Run bundle install before getting started on the project.

As this project has quite a few files, an `environment.rb` is included that
loads all the code in your project along with Bundler. You do not ever need to
edit this file. When you see require_relative `../config/environment`, that is
how your environment and code are loaded.

### Models

You'll need to create two models in `app/models`, one `User` model and one
`Car`. Both classes should inherit from `ActiveRecord::Base`.

### Migrations

You'll need to create two migrations to create the users and cars tables.

Users should have a username, and password, and have many cars.

Cars should have content and belong to a user.

### Associations

You'll need to set up the relationship between users and cars. Think about how
the user interacts with the cars, what belongs to who?

### Home Page

You'll need a controller action to load the home page. You'll want to create a
view that will eventually link to both a login page and signup page. The
homepage should respond to a GET request to `/welcome`.

### Cars Index Page

You'll need to create a controller action that will load the cars list page.
You can see carlist page without logged in user

### Create Car

You'll need to create two controller actions, one to load the create car form,
and one to process the form submission. The car should be created and saved to
the database. The form should be loaded via a GET request to `/new` and
submitted via a POST to `/submited`.

### Show car

You'll need to create a controller action that displays the information for a
single car. You'll want the controller action to respond to a GET request to
`/carlist/:id`.

### Edit Car

You'll need to create two controller actions to edit a car: one to load the
form to edit, and one to actually update the car entry in the database. The
form to edit a car should be loaded via a GET request to `/carlist/:id/edit`.
The form should be submitted via a PATCH request to `/carlist/:id`.

You'll want to create an edit link on the car show page.

### Delete Car

You'll only need one controller action to delete a car. The form to delete a
car should be found on the car show page.

The delete form doesn't need to have any input fields, just a submit button.

The form to delete a car should be submitted via a DELETE request to `carlist/:id`.

### Sign Up

You'll need to create two controller actions, one to display the user signup and
one to process the form submission. The controller action that processes the
form submission should create the user and save it to the database.

The form to sign up should be loaded via a GET request to `/signup` and
submitted via a POST request to `/signup`.

The signup action should also log the user in and add the `user_id` to the sessions hash.

Make sure you add the Signup link to the home page.

### Log In

You'll need two more controller actions to process logging in: one to display
the form to log in and one to add the `user_id` to the sessions hash.

The form to login should be loaded via a GET request to `/login` and submitted
via a POST request to `/login`.

### Log Out

You'll need to create a controller action to process a GET request to `/logout`
to log out. The controller action should clear the session hash, and redirect
the user to `/login`.

### Protecting The Views

You'll need to make sure that no one can create, edit or delete any
cars unless they're logged in.

You'll want to create two helper methods `current_user` and `logged_in?`. You'll want to use these helper methods to block content if a user is not logged in.

It's especially important that a user should not be able to edit or delete the
cars created by a different user. A user can only modify their own cars.

