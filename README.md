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



  ➜  cat-tinder-backend-meow-2-meow git:(api-endpoints) ✗ rspec spec/requests/cats_spec.rb -f d

Cats
  GET /index
    gets a list of cats
  POST /create
    creates a cat
  PUT /update
    updates a cat

Finished in 0.07377 seconds (files took 0.56806 seconds to load)
3 examples, 0 failures

➜  cat-tinder-backend-meow-2-meow git:(api-endpoints) ✗ rspec spec/requests/cats_spec.rb -f d

Cats
  GET /index
    gets a list of cats
  POST /create
    creates a cat
  PATCH /update
    updates a cat

Finished in 0.08189 seconds (files took 0.65036 seconds to load)
3 examples, 0 failures

➜  cat-tinder-backend-meow-2-meow git:(api-endpoints) ✗ rspec spec/requests/cats_spec.rb
....

Finished in 0.09057 seconds (files took 0.53664 seconds to load)
4 examples, 0 failures
