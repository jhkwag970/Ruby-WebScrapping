require_relative './site_parser'
require_relative './content_searcher'

class WebsiteScraper

    def initialize()
        @site_parser = SiteParser.new
        @content_searcher = ContentSearcher.new
    end

    def start()
    end
end