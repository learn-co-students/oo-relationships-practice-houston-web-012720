
# driver <- ride -> passener 
# name  (driver+passenger+distance)  -name

class Driver
    @@all = [ ]
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end 
    def self.all
        @@all  
    end 
    def rides
    #  returns all rides a driver has made
    Ride.all.select do |ride|
        ride.driver == self
    end
    end
    def passengers
    # returns all passengers a driver has had
    rides.map do |ride|
        ride.passenger
    end
    end
    def self.mileage_cap(distance)
    #  takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
    # all driver / drivers that thier distance! without the ride class , condtion the distance!
    self.all.select do |driver|
        total = 0
        driver.rides.map do |ride|
           total += ride.distance
        end
        total > distance
        end
    end
  
end 