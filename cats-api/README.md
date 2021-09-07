# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## dockerized instructions

first make file .env-cat, add DATABASE_URL environment variable

```console
docker run --env-file=.env-cat  -it -p 3000:3000 cat-simple
```

