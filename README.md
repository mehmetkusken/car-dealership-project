# ZONE CAR DEALERSHIP PROJECT

## Objectives

Sinatra application that uses

 A sqlite database
 ActiveRecord
 Restful routes
 Sessions
 Login/Logout

## Overview

The goal of this project is to build Car Dealership that you can sell/buy your car .

There is implementing Car-Dealership using multiple objects that interact, including separate classes for User and Car.

Just like with Dealership, a user is not be able to take any actions (except sign-up and Inventory), unless they are logged in. Once a user is logged in, they are
able to create, edit and delete their own cars, as well as view all the
cars.

There are controller tests to make sure that you build the appropriate
controller actions that map to the correct routes.

### Gemfile and environment.rb

This project is supported by bundler and includes a `Gemfile`.

Run `bundle install` before getting started on the project.

As this project has quite a few files, an `environment.rb` is included that
loads all the code in your project along with Bundler. You do not ever need to
edit this file. When you see require_relative `../config/environment`, that is
how your environment and code are loaded.

### Models

There are two models in `app/models`, one `User` model and one
`Car`. Both classes are inherit from `ActiveRecord::Base`.

### Migrations

You are two migrations to create the users and cars tables.

Users are have a username, and password, and have many cars.

Cars are belong to a user.

### Associations

There are relationship between users and cars. 

### Home Page

There is a controller action to load the home page. You will want to create a view that will eventually link to both a login page and signup page. The
homepage is responding to a GET request to `/welcome`.

### Cars Index Page

There is a controller action that will load the cars list page.
You can see carlist page without logged in user

### Create Car

There are two controller actions, one to load the create car form,
and one to process the form submission. The car should be created and saved to the database. The form is loaded via a GET request to `/new` and
submitted via a POST to `/submited`.

### Show car

You will need to create a controller action that displays the information for a
single car. You will want the controller action to respond to a GET request to
`/carlist/:id`.

### Edit Car

There are two controller actions to edit a car: one to load the
form to edit, and one to actually update the car entry in the database. The
form to edit a car should be loaded via a GET request to `/carlist/:id/edit`.
The form is submitted via a PATCH request to `/carlist/:id`.

There is edit link on the car list page.

### Delete Car

There is only  one controller action to delete a car. The form to delete a
car should be found on the car list page.

The delete form doesn't need to have any input fields, just a submit button.

The form to delete a car should be submitted via a DELETE request to `carlist/:id`.

### Sign Up

There are two controller actions, one to display the user signup and
one to process the form submission. The controller action that processes the
form submission should create the user and save it to the database.

The form to sign up should be loaded via a GET request to `/signup` and
submitted via a POST request to `/signup`.

Make sure you add the Signup link to the home page.

### Log In

The form to login is loaded via a GET request to `/login` and submitted via a POST request to `/login`.

### Log Out

There are controller action to process a GET request to `/logout`
to log out. The controller action should clear the session hash, and redirect
the user to `/`.

### Protecting The Views

No one can create, edit or delete any cars unless they're logged in.

There are two helper methods `current_user` and `logged_in?`. I use these helper methods to block content if a user is not logged in.

It is important that  user is not be able to edit or delete the
cars created by a different user. A user can only modify their own cars.

Dont forget to `bundle install` before start

