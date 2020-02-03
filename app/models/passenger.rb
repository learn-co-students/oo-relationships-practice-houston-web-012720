
class Passenger

  attr_accessor :name, :rides, :drivers

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |r| r.passenger == self }
  end

  def drivers
    rides.map { |r| r.driver }
  end

  def total_distance
    rides.sum { |r| r.distance }
  end

  def self.premium_members
    @@all.select { |p| p.total_distance >= 100 }
  end

end  
