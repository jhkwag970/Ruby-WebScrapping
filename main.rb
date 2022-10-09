require_relative 'lib/website_scraper'

ws = WebsiteScraper.new()

ws.start()

puts ws.content_searcher.sort_by_date_posted ws.site_parser.parsed_data