# driver <- ride -> passener 
# name  (driver+passenger+distance)  -name

class Passenger 
    @@all = [ ]
    attr_reader = name
    def initialze ( name)
        @name = name
        @@all << self 
    end 
    def self.all
        @@all 
    end 

    def rides
    #  returns all rides a passenger has been on
        Ride.all.select do |ride|
        ride.passenger == self
        end 
    end 

    def drivers
    #  returns all drivers a passenger has ridden with
        rides.map do |ride|
        ride.driver
        end 
    end 
    def total_distance
    # - should calculate the total distance the passenger has travelled with the service
    # total distance    passenger ride => inside the ride.distance = total 
        total = 0 
        rides.map do |ride|
        total += ride.distance
        end
        total
    end
    def self.premium_members
    # should find all passengers who have travelled over 100 miles with the service
    self.all.select do |pass|
        pass.total_distance > 100  
    end
    end 
end 