require 'uri'
require 'open-uri'
require 'nokogiri'
require 'active_support/core_ext/object/to_query'
require 'counting_stars/version'

module CountingStars

  INTEGER = /\d+/
  DECIMAL = /\d+\.\d+/
  DOLLARS = /\$+/

  def self.count(query, site)
    request "#{query} site:#{site}"
  end

  def self.request(query)
    uri = URI::HTTPS.build(
        :host  => 'encrypted.google.com',
        :path  => '/search',
        :query => { :q => query }.to_query
    )

    page = Nokogiri::HTML(open(uri))
    page = page.css('div.slp').first.text
    page.gsub(/[[:space:]]/, ' ').lstrip.split(' - ')
  end

  def self.booking(query)
    response = count(query, 'booking.com')
    { rating: response[0][DECIMAL], reviews: response[1][INTEGER] }
  end

  def self.tripadvisor(query)
    response = count(query, 'tripadvisor.com')
    { rating: response[0][INTEGER], reviews: response[1][INTEGER], price_range: response[2][DOLLARS] }
  end

end