
class Ride

  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    self.passenger, self.driver, self.distance = passenger, driver, distance
    @@all << self
  end

  def self.all
    @@all
  end  

  def self.average_distance
    @@all.distance.inject { |sum, el| sum + el }.to_f / @@all.size
  end

end  
