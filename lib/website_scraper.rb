require_relative './site_parser'
require_relative './content_searcher'
require "mechanize"

# Class for scraping data from the OSU news website.
class WebsiteScraper
    attr_reader :site_parser
    attr_reader :content_searcher
    def initialize
        @site_parser = SiteParser.new

        @content_searcher = ContentSearcher.new
    end

    # Scrapes news article data from OSU news website and returns it within an array.
    def scrap
        agent = Mechanize.new
        page = agent.get "https://news.osu.edu/?h=1&t=News,Research%20News"

        allNews = page.search('.pp_bigheadlines_data')
    end

    def start
        @site_parser.parse_news_html(scrap)
    end

end





