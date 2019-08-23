# AceBook

# comment

REQUIRED INSTRUCTIONS:

1. Fork this repository to `acebook-teamname` and customize
   the below\*\*

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

2. The card wall is here: <please update>

## How to contribute to this project

See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Project Governance

### Everyday:

Standup - 10am (15 mins)

### Every other day:

2-day sprint planning - 10:15am (1.20 hr)

- 20 min retrospective
- 20 mins per pair planning
- group pairs assigned

### Pairing:

Change pairs once a day

### Trello:

https://trello.com/b/uV5OEJNn/acebook

## Installation Instructions

1. Fork this github repo
2. Clone your fork into your projects directory
3. In the terminal, enter the following commands:
```bash
>bundle install
>rake db:create
>rake db:migrate
```
4. To launch the application, enter in the terminal
```bash
>rails s
```

## App Code Introduction For Future Developers

 --The url routes served by this app can be found by entering in the terminal
>rails routes
 --When a request to a url is received, the corresponding method in the controller .rb files found in /app/controllers/users
is called and this information is displayed on the corresponding .erb file in app/views folder which is shown to the user in the browser
 --The model classes in the app/models directory inherit from ActiveRecord and so have database query methods
 --The database setup instructions for the database that the model fills are found in the app/db/migrate directory . These instructions get consolidated into the app/db/schema.rb file  when rake db:migrate is run.  
 --Changes to the structure of the database should be made in the terminal using 
>rails g migration 
commands like here https://stackoverflow.com/questions/22815009/add-a-reference-column-migration-in-rails-4

## App User's Guide
 --Users have to sign up with an email address and be logged in before using the website.
 
 --After signing-up or logging-in , users are redirected to their wall.
 
 --A user can post a message on their wall or  visit another user's wall and post a message there.
 
 --A user can edit their own posts within 10 minutes of making the post, or they can delete their posts.
