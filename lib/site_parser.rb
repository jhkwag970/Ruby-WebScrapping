
class SiteParser
    def initialize
        @parsed_data = []
    end

    def parse_news_html(news)
        news.each do |article|
            article_date = article.search('.pp_date_month').text.strip + "/" + article.search('.pp_date_day').text.strip + "/" + article.search('.pp_date_year').text.strip
            article_title = article.search('.text_latestnews_more').text
            @parsed_data.append(article_hash(article_date, article_title))
        end
    end

    def article_hash(article_date, article_title)
        {date: article_date, title: article_title}
    end
end
