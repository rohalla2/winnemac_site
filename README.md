# 2433 W Winnemac Rental Site
##### Delopyed in production [here](http://www.2433winnemac.com).

## Local Development
This project uses Sidekiq to to execute jobs for every message sent via the contact form. The instructions below include a description of how to prepare the project to work with Sidekiq.

* Clone the repository from Github
* Navigate to the project directory
* Execute a `bundle install`
* Install [Sidekiq](http://sidekiq.org/)
* Install [Redis](http://redis.io/)
* Start the redis server with `redis-server`
* Start Sidekiq with `bundle exec sidekiq`
* `bundle exec rake db:migrate`
* `bundle exec rake db:seed`
* `rails s`


Note: in production, after doing a db:seed, you must register your admin user again.