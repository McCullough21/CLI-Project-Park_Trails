class CLI

def initialize
  puts "Hello! I see you are interested in nature trails in Palm Beach County!"
end

def county_trails
  puts "Here is the list of PBC trails:"
  puts "trail 1"
       "trail 2"
       "trail 3"
       "trail 4"
  puts "Please type the number of the trail you would like to know more about, or type exit."
    input = gets.strip
     case input
     when 1
        puts "trail 1"
     when 2
       puts "trail 2"
     when 3
       "trail 3"
     when 4
       "trail 4"
end


end
