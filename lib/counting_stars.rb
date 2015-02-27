require 'uri'
require 'open-uri'
require 'nokogiri'
require 'active_support/core_ext/object/to_query'
require 'counting_stars/version'

module CountingStars

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

end