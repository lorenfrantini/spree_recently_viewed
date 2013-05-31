# Spree Recently Viewed

[![Build Status](https://secure.travis-ci.org/futhr/spree_recently_viewed.png?branch=master)](http://travis-ci.org/futhr/spree_recently_viewed)
[![Dependency Status](https://gemnasium.com/futhr/spree_recently_viewed.png)](https://gemnasium.com/futhr/spree_recently_viewed)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_recently_viewed/badge.png?branch=master)](https://coveralls.io/r/futhr/spree_recently_viewed)

This extension maintains and displays a list of the products a user has recently viewed.

**NOTE: THIS FORK IS STILL IN WIP STAGE FOR SPREE 2.x**

### Installation

Add the following to you Gemfile:
```ruby
gem 'spree_recently_viewed', github: 'spree/spree_recently_viewed'
```

And run bundler:
```
bundle install
```

NOTE: No migrations are required for this extension. You're done, move along now.

## Contributing

* Fork the repo
* Clone your repo `git clone git@github.com:mrhelpful/spree_recently_viewed.git`
* Create branch for your pull request `git checkout -b fix-something`
* Run `bundle`
* Run `bundle exec rake test_app` to create the test application in `spec/dummy`
* Make your changes
* Ensure specs pass by running `bundle exec rake`
* Make sure yor changes has test coverage `open coverage/index.html`
* Submit your pull request

Copyright (c) 2013 Roman Smirnov, Brian Quinn, released under the New BSD License
