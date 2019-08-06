require './lib/Park_Trails.rb'
require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper


@@all = []
attr_accessor :name, :address, :hours, :description

def self.trail_names

  page = Nokogiri::HTML(open("http://discover.pbcgov.org/parks/Pages/NatureTrails.aspx"))
  trailss = []
  trails = page.css("div.ms-webpart-zone.ms-fullWidth div.s4-wpcell-plain.ms-webpartzone-cell.ms-webpart-cell-vertical.ms-fullWidth")
  trails.each do |trail|
   @name = trail.css("h2 span").text if trail.css("h2 span").text != ""
   info = trail.css("p")
    info.each do |gems|
     @address = gems.text if gems.text.include?("Entrance")
      if gems.text.include?("Sunrise")
      @hours = gems.text.strip!
      end
        if @hours.include?("here")
        29.times do
        @hours.chop!
        end
         if @hours.include?("sunsetC")
         @hours.chop!
         end
      @description = info[-1].text.strip! if info[-1].text != "​R​eturn to Nature​"
      Trails.new(@name, @address, @hours, @description)
      binding.pry
    end
 end
end
end

end
