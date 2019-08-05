require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper


@@all = []

def self.trail_names

page = Nokogiri::HTML(open("http://discover.pbcgov.org/parks/Pages/NatureTrails.aspx"))
trailss = []
trails = page.css("div.col-sm-8 h2 span").each do |trail|
if trail.text != ""
trailss << trail.text
end
end
trailss.each do |name|
  trail = []
  count = 1
   trail(count) << name
   count += 1
   @@all << trail(count)
   binding.pry
 end




end

# def self.trail_info
# address = page.css("div.col-sm-7")[0].css("p").each do |info|
# puts info.text
# end
# end
# will scrape webpage for data and create hash of trail hashes

#will iterate through hash of trail hashes and instantiate new trails in "Trails class" with each trail having an array of info


end
