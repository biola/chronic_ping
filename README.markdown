chronic_ping
===========

Simple rails engine that uses ajax to ping Chronic, giving users imediate feedback regarding the date they entered in a text field.

[Demo](https://chronic-ping.herokuapp.com)

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

    = f.text_field :due_at, class: 'chronic_ping'

Customize
---------

The following values are already set by default, but if you want to customize them, create a file called `config/initializers/chronic_ping.rb` that should look something like this:

    ChronicPing.configure do |config|
      config.formats = {
        default:        '%B %d, %Y at %I:%M%p',
        datetime:       '%B %d, %Y at %I:%M%p',
        date:           '%B %d, %Y',
        my_new_format:  '...'
      }
    end

To use a custom predefined format just specify it in a `data-format` attribute:

    = f.text_field :born_on, class: 'chronic_ping', data: {format: 'date'}

Or you can put a format string directly into the `data-format` attribute:

    = f.text_field :born_on, class: 'chronic_ping', data: {format: '%m/%d/%Y'}

License
-------

This project rocks and uses MIT-LICENSE.
