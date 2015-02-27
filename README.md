# Counting Stars [![Gem Version](https://badge.fury.io/rb/counting_stars.svg)](http://badge.fury.io/rb/counting_stars) [![Build Status](https://travis-ci.org/krmbzds/counting_stars.svg)](https://travis-ci.org/krmbzds/counting_stars) [![Dependency Status](https://gemnasium.com/krmbzds/counting_stars.svg)](https://gemnasium.com/krmbzds/counting_stars)


A simple ruby library for extracting rating and metadata information from Google Search.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'counting_stars'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install counting_stars

## Usage

### As a Ruby Module

```rb
require 'counting_stars'

CountingStars::count("Marriott's Grande Ocean", "tripadvisor.com")
=> ["Rating: 4.5", "501 reviews", "Price range: $$$"]

CountingStars::count("Marriott's Grande Ocean", "booking.com")
=> ["Rating: 9.4/10", "26 reviews"]
```

### Commmandline

:rocket: Coming soon.

## Contributing

1. Fork it ( https://github.com/krmbzds/counting_stars/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
