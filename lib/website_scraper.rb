require_relative './site_parser'
require_relative './content_searcher'
require "mechanize"

agent = Mechanize.new
page = agent.get "https://osu.wd1.myworkdayjobs.com/OSUCareers"
page2 = agent.get "https://osu.edu"

puts page.title
puts page2.title

=begin
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
=end





