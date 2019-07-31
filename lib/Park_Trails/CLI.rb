class CLI

def initialize
  puts "Hello! I see you are interested in nature trails in Palm Beach County!"
end

def run
  trail_description
  goodbye
end

def county_trails
  puts "Here is the list of PBC trails:"
  puts "trail 1"
  puts "trail 2"
  puts "trail 3"
  puts "trail 4"
end

def trail_description
  county_trails

  input = nil
  while input != "exit"

  puts "Please type the number of the trail you would like to know more about, or type exit."
  input = gets.strip
  case input
    when '1'
       puts "trail 1"
       puts "To go back to the list of PBC trails type list, or type exit"
    when  '2'
       puts "trail 2"
       puts "To go back to the list of PBC trails type list, or type exit"
    when  '3'
       puts "trail 3"
       puts "To go back to the list of PBC trails type list, or type exit"
    when  '4'
       puts "trail 4"
       puts "To go back to the list of PBC trails type list, or type exit"
    when 'list'
      trail_description
     else
       puts "I did not recognize that command."
       puts "Please type the number of the trail you would like to know more about, or type exit."
    end
end
end


def goodbye
  puts "Goodbye!"
end
# def trail_description(input)
#     #  if input == "exit"
#     #  puts "Goodbye"
#
#   when '1'
#         puts "trail 1"
#         back_to_list
#
#      when  '2'
#        puts "trail 2"
#        back_to_list
#
#     when  '3'
#        puts "trail 3"
#        back_to_list
#
#     when  '4'
#        puts "trail 4"
#        back_to_list
#
#
#      else
#        puts "I did not recognize that command."
#        county_trails
#     end
#     back_to_list
# end

# def back_to_list
#   input = nil
#   while input != "exit"
#   puts "To go back to the list of PBC trails type list, or type exit"
#   input = gets.strip
#   if input == "list"
#     self.county_trails
#   else
#     puts "I did not recognize that command."
#     puts "To go back to the list of PBC trails type list, or type exit"
#   end
# end
# end



# def trail_description(input)
#      if input == '1'
#         puts "trail 1"
#         back_to_list
#      elsif input == '2'
#        puts "trail 2"
#        back_to_list
#      elsif input == '3'
#        puts "trail 3"
#        back_to_list
#      elsif input == '4'
#        puts "trail 4"
#        back_to_list
#      else
#        puts "I did not recognize that command."
#        county_trails
#     end
# end
#
end
