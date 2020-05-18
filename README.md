# RaiseOnWarning

Tracking down deprecations in ruby or other libraries can be difficult, especially in applications with lots of STDOUT
output. This library helps find deprecation warnings by stubbing out Warning#warn to treat warnings as fatal. See the
ruby core docs for more details:
https://ruby-doc.org/core-2.5.0/Warning.html

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'raise_on_warning', group: [:development, :test]
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install raise_on_warning

## Usage

This library will raise exceptiongs on warning for the ruby core library and any library that uses the `Warning` module.
Libraries that implement custom warnings or extend `Warning` will not be affected.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sdfreund10/raise_on_warning.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
