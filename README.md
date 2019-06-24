# :bookmark: Bookmark Manager :bookmark:

[![Build Status](https://travis-ci.com/petraartep/bookmark-manager.svg?branch=master)](https://travis-ci.com/petraartep/bookmark-manager)

## User Stories

```
As a user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks

As a user
So that I can save a website
I would like to add the site's address and title to bookmark manager

As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager

As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
```

## Domain Model

![Bookmark Manager domain model](https://user-images.githubusercontent.com/23095774/59843377-5d178500-9350-11e9-8ccd-43144883a755.png)


- When the user visits the '/bookmarks' path, their browser sends a request to a controller we built.
- When the controller gets the request, it asks the Bookmark class to give it all the bookmarks, i.e. the controller asks for Bookmark.all.
- The Bookmark class goes and gets the bookmarks, and gives back all the bookmarks in an array to the controller.
- The controller renders the array of bookmarks to a webpage, which it sends as a response to the user



## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.


### To run the Bookmark Manager app:

```
rackup -p 3000
```
To view bookmarks, navigate to `localhost:3000/bookmarks`.


### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```