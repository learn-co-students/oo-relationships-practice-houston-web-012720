class Driver

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{ |ride|
            ride.driver == self
        }
    end

    def passengers
        rides.map{ |ride|
            ride.passenger
        }.uniq
    end

    def mileage
        rides.sum { |sum  = 0, ride|
            sum = sum + ride.distance
        }
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        @@all.select { |driver|
            driver.mileage > distance
        }
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        Driver.new(rand_name)
    end


end


# - #name 
# - returns the name of the passenger
# - #rides
# - returns all rides a driver has made
# - #passengers
# - returns all passengers a driver has had
# - .all
# - returns an array of all drivers
# - .mileage_cap(distance)
# - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
