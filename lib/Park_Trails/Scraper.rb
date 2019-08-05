require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

@@all = []

def self.scrape
trail = []

doc = Nokogiri::HTML(open("http://discover.pbcgov.org/parks/Pages/NatureTrails.aspx"))
trail << doc.css("div.col-sm-8.h2.span").text
binding.pry
end

page = Nokogiri::HTML(open(site))
trailss = []
trails = page.css("div.col-sm-8 h2 span").each do |trail|
if trail.text != ""
trailss << trail.text
end

# will scrape webpage for data and create hash of trail hashes

#will iterate through hash of trail hashes and instantiate new trails in "Trails class" with each trail having an array of info


end
