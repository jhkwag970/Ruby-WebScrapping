require_relative 'lib/website_scraper'

ws = WebsiteScraper.new()

ws.start()

# sorts: title, rev title, names alpha, names reverse alpha, location, date, link

puts "Please enter the way you would like the articles to be sorted.
      \n1.) Enter \"title\" for sorting each entry by title in alphabetical order
      \n2.) Enter \"rev title\" for sorting each entry by title in reverse alphabetical order
      \n3.) Enter \"date\" for sorting each entry by date
      \n4.) Enter \"link\" for sorting each entry by link
      \n5.) Enter title of article to find the specific article\n"

answer = gets.chomp
# Process and print article data based on user entered command.
if answer == "title"
  ws.content_searcher.sort_by_title ws.site_parser.parsed_data
  ws.site_parser.parsed_data.each do |article|
    puts "Date: #{article[:date]}          Title: #{article[:title]}          Link: #{article[:link]}"
  end 
elsif answer == "rev title"
  ws.content_searcher.sort_by_title_reverse ws.site_parser.parsed_data
  ws.site_parser.parsed_data.each do |article|
    puts "Date: #{article[:date]}          Title: #{article[:title]}          Link: #{article[:link]}"
  end 
elsif answer == "date"
  ws.content_searcher.sort_by_date_posted ws.site_parser.parsed_data
  ws.site_parser.parsed_data.each do |article|
    puts "Date: #{article[:date]}          Title: #{article[:title]}          Link: #{article[:link]}"
  end 
elsif answer == "link"
  ws.content_searcher.sort_by_link ws.site_parser.parsed_data
  ws.site_parser.parsed_data.each do |article|
    puts "Date: #{article[:date]}          Title: #{article[:title]}          Link: #{article[:link]}"
  end 
else
  article = ws.content_searcher.find_title ws.site_parser.parsed_data, answer
  if article.length == 0
    puts "No article Found"
  else
    puts "Date: #{article[:date]}          Title: #{article[:title]}          Link: #{article[:link]}"
  end
end