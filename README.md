# Spree Recently Viewed

[![Build Status](https://secure.travis-ci.org/futhr/spree_recently_viewed.png?branch=master)](http://travis-ci.org/futhr/spree_recently_viewed)
[![Dependency Status](https://gemnasium.com/futhr/spree_recently_viewed.png)](https://gemnasium.com/futhr/spree_recently_viewed)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_recently_viewed/badge.png?branch=master)](https://coveralls.io/r/futhr/spree_recently_viewed)

This extension maintains and displays a list of the products a user has recently viewed.

## Installation

Add the following to you `Gemfile`:
```ruby
gem 'spree_recently_viewed', github: 'spree/spree_recently_viewed'
```

And run bundler:
```sh
bundle install
```

NOTE: No migrations are required for this extension. You're done, move along now.

## Contributing

In the spirit of [free software][1], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][2]
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes and follow this [Style Guide](https://github.com/thoughtbot/guides)
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2013 Roman Smirnov, Brian Quinn, released under the [New BSD License][3]

[1]: http://www.fsf.org/licensing/essays/free-sw.html
[2]: https://github.com/futhr/spree_recently_viewed/issues
[3]: https://github.com/futhr/spree_recently_viewed/tree/master/LICENSE
