Makers Academy Week 9 Makerthon:  Platform Finder
=================

This is a solution to a challenge given by Makers Academy on week 9, part of Learn to code in 12 weeks course.

The aim of the challenge.
-------------------------

Create an application that will help a user receive their train platform number via a text message. Technologies used include AngularJS, Ruby on Rails, HTML, Redis, Sidekiq, Twilio.

To Install

* Clone this repo and ```$ cd ``` into it.
* Install dependencies using ```bundle```, ```$ npm install``` and ```$ rake bower:install```
* Install Redis using ```$ brew install redis```
* Create the database with ```$ rake db:create```

To Run

* Start the Redis server using ```$ redis-server```
* Start Sidekiq with ```$ bundle exec sidekiq```
* Start the app with ```$ rails s```
* Point your browser at ```http://localhost:3000```

To use

* Enter your starting station and your finishing station and hit submit.
* From the list of trains, select your train.
* Enter your mobile phone number.
* If your trains platform information is available you will receive a text immediately. Otherwise it will arrive when ready. 

User stories
------------
```
As a busy commuter,
So that I can get train information,
I would like to be able to search for trains by entering a start station.

As a busy commuter,
So that I can get to my destination,
I would like to pick a train.

As a busy commuter,
So that I can be notified of train platform,
I would like to input a phone number.

As a busy commuter,
So that I can be the 1st on the train,
I would like to receive a text notification for the platform number.

```

### Optional Extra

* Deploy the app
* Create a persistance layer (e.g. MongoDB), or use LocalStorage or the filesystem through Node
* Make it look purdy (CSS)


Technologies used
-----------------

  * Testing
    * Karma
    * Protractor
    * Jasmine


  * Back end framework
    * Ruby on Rails


  * Front end framework
    * AngularJS
    
