require_relative './website_scraper'

ws = WebsiteScraper.new

news = ws.start

date = news[0].search('.pp_date_day').text.strip
month = news[0].search('.pp_date_month').text.strip
year = news[0].search('.pp_date_year').text.strip

puts "#{year}-#{month}-#{date}"

header = news[0].search('.text_latestnews_more')
title = header.text

puts "title: #{title}"
=begin
header is
<a class="text_latestnews_more" href="//news.osu.edu/computer-science-benefits-students-with-learning-disabilities/">
  Computer science benefits students with learning disabilities
</a>
but cannot find how to extract href value

I tried but not work
link = header.href
link = hdear.attribute['href']
puts "#{link}"
=end


