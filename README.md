# Sunway Innovators
> The back-end interface of Sunway Innovators

## Installing / Getting started

### Built With

-   omniauth
-   devise_token_auth
-   ActiveModelSerializers
-   rspec-rails
-   [rswag](https://github.com/domaindrivendev/rswag)
-   draper
-   pundit
-   acts-as-taggable-on
-   friendly_id
-   factory_girl_rails
-   carrierwave

### Prerequisites

-   Rails 5.2
-   PostgreSQL (sqlite3 for dev)

### Setting up Dev

Here's a brief intro about what a developer must do in order to start developing
the project further:

```shell
git clone https://github.com/sunwayinnovators/innovators-api.git
cd innovators-api/
bundle install
rails db:migrate
rails server
```

## API Reference

API documents are available over [localhost:5000/api-docs](http://localhost:5000/api-docs) during development.

To generate new Swagger API definitions, use `rails rswag:specs:swaggerize`

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/14426cdd2ae2fe5ca53f)

## Configuration

## Tests

## Style guide

## Database

## Deploying