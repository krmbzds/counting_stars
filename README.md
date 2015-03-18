# Counting Stars

[![Build Status](https://travis-ci.org/krmbzds/counting_stars.svg)](https://travis-ci.org/krmbzds/counting_stars)
[![Test Coverage](https://codeclimate.com/github/krmbzds/counting_stars/badges/coverage.svg)](https://codeclimate.com/github/krmbzds/counting_stars)
[![Code Climate](https://codeclimate.com/github/krmbzds/counting_stars/badges/gpa.svg)](https://codeclimate.com/github/krmbzds/counting_stars)
[![Gem Version](https://badge.fury.io/rb/counting_stars.svg)](http://badge.fury.io/rb/counting_stars)
[![Dependency Status](https://gemnasium.com/krmbzds/counting_stars.svg)](https://gemnasium.com/krmbzds/counting_stars)


A simple ruby library for extracting rating and metadata information from Google Search.

## Installation

Add this line to your application's Gemfile:

```rb
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

# Now you can also use shorthand methods
CountingStars::booking("Kayakapı Premium Caves Cappadocia")
=> {:rating=>"9.4", :reviews=>"181"}

CountingStars::tripadvisor("Four Seasons Hotel Istanbul Sultanahmet")
=> {:rating=>"5", :reviews=>"966", :price_range=>"$$$$"}
```

### Commmandline

```rb
  Usage
    countingstars OPTION QUERY

  Options
    -b, --booking               get metadata from booking.com
    -t, --tripadvisor           get metadata from tripadvisor.com
    -h, --help                  show this help

  Examples
     countingstars -t "Gili Lankanfushi Maldives"
     countingstars -b "The Royal Savoy Sharm El Sheikh"

```

## Contributing

1. Fork it ( https://github.com/krmbzds/counting_stars/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
