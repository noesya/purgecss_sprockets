# PurgeCSS Sprockets

Reduce CSS file size by removing unused selectors with PurgeCSS in Rails asset pipeline.

## Installation

### Ruby Gem

Add this line to your application's Gemfile:

```ruby
gem 'purgecss_sprockets'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install purgecss_sprockets

### JS library

Install PurgeCSS in your Rails application if you don't have it:

    $ yarn add purgecss

Run the config file generator:

    $ rails g purgecss_sprockets:install

## Usage

This gem is intended to be used as a post processor step in your asset pipeline:

    $ bundle exec rake assets:precompile

You can temporarily disable the processor or re-configure how PurgeCSS is called in an initializer:

`config/initializers/purgecss_sprockets.rb`:

```ruby
PurgecssSprockets.disabled = true # default: false
PurgecssSprockets.purgecss_cmd = "node node_modules/purgecss/bin/purgecss.js"
```

You can configure PurgeCSS with the generated `purgecss.config.js`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/noesya/purgecss_sprockets. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/noesya/purgecss_sprockets/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PurgeCSS Sprockets project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/noesya/purgecss_sprockets/blob/main/CODE_OF_CONDUCT.md).
