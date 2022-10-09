require_relative './website_scraper'

ws = WebsiteScraper.new

news = ws.scrap

tmp = []

def article_hash(article_date, article_title, article_link)
  {date: article_date, title: article_title, link: article_link}
end

news.each do |article|
  article_date = Date::MONTHNAMES.index(article.search('.pp_date_month').text).to_s + "/" + article.search('.pp_date_day').text.strip[0 ...-1] + "/" + article.search('.pp_date_year').text.strip
  article_title = article.search('.text_latestnews_more').text
  article_link = "https:"+article.search('.text_latestnews_more')[0]['href']
  tmp.append(article_hash(article_date,article_title,article_link))
end

p tmp

p news

=begin
date = news[0].search('.pp_date_day').text.strip
month = news[0].search('.pp_date_month').text.strip
year = news[0].search('.pp_date_year').text.strip

puts "#{year}-#{month}-#{date}"

header = news[0].search('.text_latestnews_more')
title = header.text
link = "https://" + header[0]['href']

puts "title: #{title}"
puts link
=end



