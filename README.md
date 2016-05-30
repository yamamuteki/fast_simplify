# FastSimplify [![Gem Version](https://badge.fury.io/rb/fast_simplify.svg)](https://badge.fury.io/rb/fast_simplify) [![Build Status](https://travis-ci.org/yamamuteki/fast_simplify.svg?branch=master)](https://travis-ci.org/yamamuteki/fast_simplify) [![Coverage Status](https://coveralls.io/repos/github/yamamuteki/fast_simplify/badge.svg?branch=master)](https://coveralls.io/github/yamamuteki/fast_simplify?branch=master) [![Code Climate](https://codeclimate.com/github/yamamuteki/fast_simplify/badges/gpa.svg)](https://codeclimate.com/github/yamamuteki/fast_simplify) [![Dependency Status](https://gemnasium.com/badges/github.com/yamamuteki/fast_simplify.svg)](https://gemnasium.com/github.com/yamamuteki/fast_simplify)

Simplify array using given rate with equal interval algorithm. Keep first and last elements.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fast_simplify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fast_simplify

## Usage

```ruby
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

FastSimplify.simplify(array, 1.0)
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

FastSimplify.simplify(array, 0.5) # keep first and last elements.
# => [1, 3, 6, 8, 10]

FastSimplify.simplify(array, 0.2)
# => [1, 10]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yamamuteki/fast_simplify.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

