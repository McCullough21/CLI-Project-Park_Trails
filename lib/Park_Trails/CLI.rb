class CLI

def initialize
  puts "Hello! I see you are interested in nature trails in Palm Beach County!"
  county_trails
end

def county_trails
  puts "Here is the list of PBC trails:"
  puts "trail 1"
  puts "trail 2"
  puts "trail 3"
  puts "trail 4"
  puts "Please type the number of the trail you would like to know more about, or type exit."
    input = gets.strip
     if input == '1'
        puts "trail 1"
        puts "To go back to the list of PBC trails, type list; or type exit"
     elsif input == '2'
       puts "trail 2"
       puts "To go back to the list of PBC trails, type list; or type exit"
     elsif input == '3'
       puts "trail 3"
       puts "To go back to the list of PBC trails, type list; or type exit"
     elsif input == '4'
       puts "trail 4"
       puts "To go back to the list of PBC trails, type list; or type exit"
     else
       puts "I did not recognize that command."
       puts "Please type the number of the trail you would like to know more about, or type exit."
    end
     input = gets.strip
     if input == "list"
       self.county_trails
     else
       puts "I did not recognize that command."
       puts "To go back to the list of PBC trails, type list; or type exit"

end
end

end
