require './lib/Park_Trails.rb'
class Trails

@@all = []

attr_reader :name, :address, :hours, :description

  def initialize(name, address, hours, description)  #array instead, will use index in CLI
     @name = name
     @address = address
     @hours = hours
     @description = description
     @@all << self
  end

def self.all
  @@all
end




end
