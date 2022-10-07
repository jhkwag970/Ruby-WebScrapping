require_relative './site_parser'
require_relative './content_searcher'
require 'open-uri'
require 'net/http'
require "nokogiri"

class WebsiteScraper

    def initialize
        @site_parser = SiteParser.new
        @content_searcher = ContentSearcher.new
    end

    def start
        doc = Nokogiri::HTML4(URI.open("https://osu.wd1.myworkdayjobs.com/OSUCareers"))

        description = doc.css("div").text
    end

end





