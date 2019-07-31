class CLI

def initialize
  puts "Hello! I see you are interested in nature trails in Palm Beach County!"
  county_trails
  back_to_list
end


def county_trails
  puts "Here is the list of PBC trails:"
  puts "trail 1"
  puts "trail 2"
  puts "trail 3"
  puts "trail 4"
  puts "Please type the number of the trail you would like to know more about, or type exit."
  input = gets.strip
  trail_description(input)
end

def back_to_list
  puts "To go back to the list of PBC trails, type list; or type exit"
  input = gets.strip
  if input == "list"
    self.county_trails
  elsif input == "exit"

  else
    puts "I did not recognize that command."
    back_to_list
  end
end



def trail_description(input)
     if input == '1'
        puts "trail 1"
        back_to_list

     elsif input == '2'
       puts "trail 2"
       back_to_list

     elsif input == '3'
       puts "trail 3"
       back_to_list

     elsif input == '4'
       puts "trail 4"
       back_to_list


     else
       puts "I did not recognize that command."
       county_trails
    end
    back_to_list
end

end
