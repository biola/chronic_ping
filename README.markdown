chronic_ping
===========

Simple rails engine that uses ajax to ping Chronic, giving users imediate feedback regarding the date they entered in a text field.

[![Build Status](https://travis-ci.org/biola/chronic_ping.png)](https://travis-ci.org/biola/chronic_ping)

Requirements
------------

* [chronic](https://rubygems.org/gems/chronic)
* rails > 3.1 using asset pipeline
* jquery-rails

Usage
-----
In your `Gemfile`
    
    gem 'chronic_ping'

In your `assets/javascript/application.js`
    
    //= require chronic_ping

In your form
    
    = f.text_field :birthday, class: 'chronic_ping', value: @student.birth_date.to_s

Customize
---------

The following values are already set by default, but if you want to customize them, create a file called `config/initializers/chronic_ping.rb` that should look something like this:

    ChronicPing.configure do |config|
      config.datetime_format = "%B %d, %Y at %I:%M%p"
      config.relative_root_url = ""
    end

License
-------

This project rocks and uses MIT-LICENSE.