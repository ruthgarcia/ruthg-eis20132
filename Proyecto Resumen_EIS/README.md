Job Vacancy Application
=======================

Once you have clone this repository, follow these steps to start working:

* Run **_bundle install --without staging production_**, to install all application dependencies
* Run **_bundle exec rake_**, to run all tests and ensure everything is properly setup
* Run **_PADRINO_ENV=development bundle exec padrino rake db:migrate_**, to setup the development database
* Run **_bundle exec padrino start_**, to start the application


Some conventions to work on it:

* Follow existing coding conventions
* Use feature branch
* Add descriptive commits messages in English to every commit
* Write code and comments in English
* Use REST routes
