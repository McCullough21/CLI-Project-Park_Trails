class Trails

@@all = []
  def initialize(name, address, hours, description)
     @name = name
     @address = address
     @hours = hours
     @description = description
     @@all << self
  end




end
