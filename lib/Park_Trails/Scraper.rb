require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper


@@all = []

def self.trail_names

page = Nokogiri::HTML(open("http://discover.pbcgov.org/parks/Pages/NatureTrails.aspx"))
trails = page.css("div.ms-webpart-zone.ms-fullWidth div.s4-wpcell-plain.ms-webpartzone-cell.ms-webpart-cell-vertical.ms-fullWidth")
  # puts trails.count
  trails.each do |trail|
   name = trail.css("h2 span").text if trail.css("h2 span").text != ""
   info = trail.css("p")
   info.each do |gems|
    address = gems.text if gems.text.include?("Entrance")
    hours =
    puts address
   binding.pry
 end
end

# at the end of this method above, instantiate a new TRAIL in Trails class


end

# def self.trail_info
# address = page.css("div.col-sm-7")[0].css("p").each do |info|
# puts info.text
# end
# end
# will scrape webpage for data and create hash of trail hashes

#will iterate through hash of trail hashes and instantiate new trails in "Trails class" with each trail having an array of info


end
