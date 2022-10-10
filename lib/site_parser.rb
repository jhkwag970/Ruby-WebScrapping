# Class for parsing scraped html content from OSU news website.
class SiteParser
    attr_accessor :parsed_data
    def initialize
        @parsed_data = []
    end

    # Finds news article titles, publish dates, and links from scraped html and stores data in hashes within an array.
    def parse_news_html(news)
        news.each do |article|
            article_date = article.search('.pp_date_month').text.strip + "/" + article.search('.pp_date_day').text.strip.gsub(/[\s,]/ ,"") + "/" + article.search('.pp_date_year').text.strip
            article_title = article.search('.text_latestnews_more').text
            article_link = "https:"+article.search('.text_latestnews_more')[0]['href']
            @parsed_data.append(article_hash(article_date, article_title,article_link))
        end
    end

    # Takes article data and puts it into a hash and returns it.
    def article_hash(article_date, article_title, article_link)
        {date: article_date, title: article_title, link: article_link}
    end

    # Prints article data that has been parsed.
    def print_all
        p @parsed_data
    end

    # Prints all of the article titles that have been parsed.
    def print_title
        @parsed_data.each do |article|
            p article[:title]
        end
    end

    # Prints all of the article links that have been parsed.
    def print_link
        @parsed_data.each do |article|
            p article[:link]
        end
    end

    # Prints all of the article dates that have been parsed.
    def print_date
        @parsed_data.each do |article|
            p article[:date]
        end
    end

    # Returns the number of news articles that have been parsed.
    def news_number
        @parsed_data.length
    end


end
