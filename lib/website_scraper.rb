require_relative './site_parser'
require_relative './content_searcher'
require "mechanize"


class WebsiteScraper

    def initialize
        @site_parser = SiteParser.new

        @content_searcher = ContentSearcher.new
    end

    def start
        agent = Mechanize.new
        page = agent.get "https://news.osu.edu/?h=1&t=News,Research%20News"

        allNews = page.search('.pp_bigheadlines_data')
    end

end





