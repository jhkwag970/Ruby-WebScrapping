require_relative 'lib/website_scraper'

ws = WebsiteScraper.new()

ws.start()

# sorts: title, rev title, names alpha, names reverse alpha, location, date, link

puts "Please enter the way you would like the articles to be sorted.
      \n1.) Enter \"title\" for sorting each entry by title in alphabetical order
      \n2.) Enter \"rev title\" for sorting each entry by title in reverse alphabetical order
      \n3.) Enter \"date\" for sorting each entry by date
      \n4.) Enter \"link\" for sorting each entry by link:\n"

answer = gets.chomp

if answer == "title"
  puts ws.content_searcher.sort_by_title ws.site_parser.parsed_data
elsif answer == "rev title"
  puts ws.content_searcher.sort_by_title_reverse ws.site_parser.parsed_data
elsif answer == "date"
  puts ws.content_searcher.sort_by_date_posted ws.site_parser.parsed_data
elsif answer == "link"
  puts ws.content_searcher.sort_by_link ws.site_parser.parsed_data
end