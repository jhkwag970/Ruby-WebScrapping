require_relative './site_parser'
require_relative './content_searcher'
require "mechanize"


class WebsiteScraper

    def initialize
        @site_parser = SiteParser.new

        @content_searcher = ContentSearcher.new
    end

    def scrap
        agent = Mechanize.new
        page = agent.get "https://news.osu.edu/?h=1&t=News,Research%20News"

        allNews = page.search('.pp_bigheadlines_data')
    end

    def start
        @site_parser.parse_news_html(scrap)
    end

end





