# RuboCop Semantics

Checks for meaningless variable names in Ruby code. An extension for [RuboCop](https://rubocop.org).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-semantics', require: false
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubocop-semantics

## Usage

```yaml
# .rubocop.yml

require:
  - rubocop-semantics
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`,
and then run `bundle exec rake release`,
which will create a git tag for the version,
push git commits and the created tag,
and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vassilevsky/rubocop-semantics

To create a new cop in this extension, run:

    bundle exec rake new_cop[Semantics/RuleName]

Please cover all logic with tests.