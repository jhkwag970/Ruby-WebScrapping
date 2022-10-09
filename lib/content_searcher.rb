class ContentSearcher


def sort_by_title(parsed_data)
    parsed_data.sort_by!{|hsh| hsh[:title]}
end

def sort_by_title_reverse(parsed_data)
    parsed_data.sort_by!{|hsh| hsh[:title]}.reverse!
end

def find_title(parsed_data, title)
    article = Hash.new
    parsed_data.each do |item|
        if item[:title] == title
            article = item.clone
        end
    end
    article
end

def sort_help(h)
    hash = { January: "01", February: "02", March: "03", April: "04", May: "05", June: "06",
             July: "07", August: "08", September: "09", October: "10", November: "11", December: "12"}
    m,d,y=h[:date].split("/")
    "#{y}-#{hash[m.to_sym]}-#{d}"
end

def sort_by_date_posted(listOfDates)
    listOfDates.sort_by {|h| sort_help(h)}
end

def sort_by_link(listOfLinks)
    listOfLinks.sort_by{|hash| hash[:link]}
end
end
