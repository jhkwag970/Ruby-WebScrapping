
class SiteParser
    def initialize
        @parsed_data = []
    end

    def parse_news_html(news)
        news.each do |article|
            article_date = article.search('.pp_date_month').text.strip + "/" + article.search('.pp_date_day').text.strip + "/" + article.search('.pp_date_year').text.strip
            article_title = article.search('.text_latestnews_more').text
            article_link = "https:"+article.search('.text_latestnews_more')[0]['href']
            @parsed_data.append(article_hash(article_date, article_title,article_link))
        end
    end

    def article_hash(article_date, article_title, article_link)
        {date: article_date, title: article_title, link: article_link}
    end

    def print_all
        p @parsed_data
    end

    def print_title
        @parsed_data.each do |article|
            p article[:title]
        end
    end

    def print_link
        @parsed_data.each do |article|
            p article[:link]
        end
    end

    def print_date
        @parsed_data.each do |article|
            p article[:date]
        end
    end

    def news_number
        @parsed_data.length
    end


end
