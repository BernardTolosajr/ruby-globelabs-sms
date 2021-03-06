# ruby-globelabs-sms
Simple wrapper for [Globe Labs](http://www.globelabs.com.ph/) SMS api

[![Build Status](https://travis-ci.org/BernardTolosajr/ruby-globelabs-sms.svg)](https://travis-ci.org/BernardTolosajr/ruby-globelabs-sms.svg)

```ruby
gem 'globelabs-sms'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install globelabs-sms

## Usage

```ruby
require 'globelabs-sms'

sms = Globelabs::SMS.new

options = {
  message: 'hello',
  address: '0915xxxxxx',
  sender_address: '1292',
  access_token: 'iwexlwioj23jksdf'
}

response = sms.send_to options
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/globelabs-sms/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
=======
