# Class for processing scraped article data.
class ContentSearcher
    # Sorts the array of news article data hashes in alphabetical order by title.
    def sort_by_title(parsed_data)
        parsed_data.sort_by!{|hsh| hsh[:title]}
    end

    # Sorts the array of news article data hashes in reverse alphabetical order by title.
    def sort_by_title_reverse(parsed_data)
        parsed_data.sort_by!{|hsh| hsh[:title]}.reverse!
    end

    # Finds and returns the article data hash with the same title passed in.
    def find_title(parsed_data, title)
        article = Hash.new
        parsed_data.each do |item|
            if item[:title] == title
                article = item.clone
            end
        end
        article
    end

    # Helper method for sorting article hashes by the date they were published that converts the month name to its month number.
    def sort_help(h)
        hash = { January: "01", February: "02", March: "03", April: "04", May: "05", June: "06",
                July: "07", August: "08", September: "09", October: "10", November: "11", December: "12"}
        m,d,y=h[:date].split("/")
        "#{y}-#{hash[m.to_sym]}-#{d}"
    end

    # Sorts the array of news article data hashes in order by the date articles were published.
    def sort_by_date_posted(listOfDates)
        listOfDates.sort_by {|h| sort_help(h)}
    end

    # Sorts the array of news article data hashes in alphabetical order by link.
    def sort_by_link(listOfLinks)
        listOfLinks.sort_by!{|hash| hash[:link]}
    end
end
