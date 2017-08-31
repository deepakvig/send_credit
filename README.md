# Send Credit App

This is a basic application for sending credits to different users.

## Versions

- Rails 5.1.3

## Features

- [Ruby on Rails 5.1](http://rubyonrails.org/)
- [Twitter Bootstrap 3](https://github.com/twbs/bootstrap-sass)
- [FontAwesome](https://github.com/FortAwesome/font-awesome-sass)
- [Slim Template Engine](http://slim-lang.com/)
- [Rspec](https://github.com/rspec/rspec-rails)
- [Devise](https://github.com/plataformatec/devise)

## Architecture

MVC

- Models: app/models
- Views: app/views
- Controllers: app/controllers

## Quick Start

```
$ bundle install
```

### Database

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

### Run

After finish the database configuration,

```
$ rails server
```

and go to [http://localhost:3000/](http://localhost:3000/).


## How to run the test suite

```
$ bundle exec rspec
```

## Heroku


## routes
To get current logged in user details : /api/v1/users/current.json
Root Url will ask user to create account and then login
