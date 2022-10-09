require_relative './website_scraper'

ws = WebsiteScraper.new
sp = SiteParser.new

news = ws.start
sp.parse_news_html(news);
sp.print_all
p sp.news_number

=begin
date = news[0].search('.pp_date_day').text.strip
month = news[0].search('.pp_date_month').text.strip
year = news[0].search('.pp_date_year').text.strip

puts "#{year}-#{month}-#{date}"

header = news[0].search('.text_latestnews_more')
title = header.text
link = header[0]['href']

puts "title: #{title}"
puts link
=end


