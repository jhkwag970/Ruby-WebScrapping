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
def sort_by_name_alphabetical(listOfJobs)
    listOfJobs[:job].sort
end

def sort_by_name_anti_alphabetical(listOfJobsGiven)
    listOfJobsGiven[:job].sort{|a, b| b <=> a}
end

def sort_by_location(listOfLocations, locations)
    acceptableLocations = []
    acceptableLocationsCounter = 0
    listOfLocations.each do |locGiven|
        if locGiven[:location] == locations
            acceptableLocations[acceptableLocationsCounter] = locGiven
            acceptableLocationsCounter = acceptableLocationsCounter + 1
        end
    end
    listOfLocations
end

def sort_by_date_posted(listOfDates)
    listOfDates.sort_by[:date]{|d| m,d,y=d.split("/");[y,m,d]}
end

end
