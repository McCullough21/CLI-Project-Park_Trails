class Trails

@@all = []

attr_reader :name, :address, :hours, :description

  def initialize(name, address, hours, description)
     @name = name
     @address = address
     @hours = hours
     @description = description
     @@all << self
  end





end
