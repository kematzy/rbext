# Rbext  == Ruby Extensions

Rbext is a collection of Ruby extensions created as an alternative to ActiveSupport.

The core purpose of this gem is to be a quick, *super obvious* and easy to use source for common 
Ruby extensions that are missing in the core Ruby frameworks.

A commonly used example is the `.blank?` method commonly used in many projects

The `.blank?` method is possibly one of those important methods missing from the core Ruby libs, 
so it should be easy to add it to any project.  

This is how:

```ruby
require "rbext/blank?" unless Object.new.respond_to?(:blank?)
```

Compare the above with the ActiveSupport version:

```ruby
require 'active_support/core_ext/object/blank' unless Object.new.respond_to?(:blank?)
```

The **key difference** is the immediacy of the loading of the functionality.  All you need to 
remember is "*Rbext*" and "*blank?*" and combine those into `require 'rbext/blank?` to include the 
functionality, compared with the ActiveSupport version which I always get wrong.


## Disclaimer!

Most of the code in this gem have been copied from ActiveSupport or other gems / projects. I have 
tried to give credit and attribution whenever code is copied. If I have missed out something, please
raise an issue and I will provide the proper credit/attribution.



To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rbext'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install rbext
```

## Usage

TODO: Write usage instructions here


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run 
the tests. You can also run `bin/console` for an interactive prompt that will allow you to 
experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new 
version, update the version number in `version.rb`, and then run `bundle exec rake release`, which 
will create a git tag for the version, push git commits and tags, and push the `.gem` file to 
[rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kematzy/rbext. This 
project is intended to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

