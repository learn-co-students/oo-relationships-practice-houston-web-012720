class Passenger

    attr_reader :name

    @@all=[]

    def initialize (name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{ |ride|
            ride.passenger == self
        }
    end

    def drivers
        rides.map{ |ride|
            ride.driver
        }.uniq
    end

    def total_distance
        rides.sum { |sum = 0, ride|
            sum = sum + ride.distance
        }
    end

    def take_a_ride
        Ride.new(self, Driver.get_random, rand(1..20))
    end

    def self.all 
        @@all
    end

    def self.premium_members
        @@all.select{ |passenger|
            passenger.total_distance > 100
        }
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        Passenger.new(rand_name)
    end

end

# - #name 
# - returns the name of the passenger
# - #rides
# - returns all rides a passenger has been on
# - #drivers
# - returns all drivers a passenger has ridden with
# - .all
# - returns an array of all passengers
# - #total_distance
# - should calculate the total distance the passenger has travelled with the
#   service
# - .premium_members
# - should find all passengers who have travelled over 100 miles with the service