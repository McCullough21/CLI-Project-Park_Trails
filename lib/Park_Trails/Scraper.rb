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
if trail.css("h2 span").text != "" && trail.css("h2 span").text != nil
     @name = trail.css("h2 span").text
   info = trail.css("p")
      info.each do |gems|
        if gems.text.include?("Entrance") && gems.text != nil
          @address = gems.text.strip!
        elsif gems.text.include?("Sunrise")
           @hours = gems.text.strip!
             if @hours.include?("here")
               29.times do
                 @hours.chop!
               end
             end
             if @hours.include?("sunsetC")
               @hours.chop!
             end

        info[-1].text != "​R​eturn to Nature​"
       @description = info[-1].text.strip!
       Trails.new(@name, @address, @hours, @description)
        end

   end
end
end
binding.pry
end

end
