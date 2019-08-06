require './lib/Park_Trails.rb'
class CLI
require 'pry'


def initialize
  puts "Hello! I see you are interested in nature trails in Palm Beach County!"
end

def run
  Scraper.trail_names
  county_trails
  # Scraper.trail_names
  Trails.all
  # binding.pry

end

def county_trails
  puts "Here is the list of PBC trails:"
  puts "trail 1"
  puts "trail 2"
  puts "trail 3"
  puts "trail 4"
  puts "Please type the number of the trail you would like to know more about, or type exit."
  input = gets.strip
  if input == "exit"
     goodbye

  else trail_description(input)
  end
end


def trail_description(input)


    if input == '1'
       puts "trail 1"
       puts "To go back to the list of PBC trails type list, or type exit"
    elsif input == '2'
       puts "trail 2"
       puts "To go back to the list of PBC trails type list, or type exit"
    elsif input == '3'
       puts "trail 3"
       puts "To go back to the list of PBC trails type list, or type exit"
    elsif input == '4'
       puts "trail 4"
       puts "To go back to the list of PBC trails type list, or type exit"
    # elsif input == 'list'
    #   county_trails
     else
       puts "I did not recognize that command."
       county_trails
    end
    new_input = gets.strip
     if new_input == "list"
       county_trails
     elsif new_input == "exit"
        goodbye
     else
     puts "I did not recognize that command."
     trail_description(input)
  end
end



def goodbye
  puts "Goodbye!"
end

end
