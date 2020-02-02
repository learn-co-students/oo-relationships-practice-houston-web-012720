class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        c = @@all.length
        d = @@all.sum { |sum = 0, ride|
            sum = sum + ride.distance
        }
        (d/c).to_i
    end
end



# - #passenger
# - returns the passenger object for that ride
# - #driver
# - returns the driver object for that ride
# - #distance
# - returns the distance travelled for that ride
# - .average_distance
# - should find the average distance of all rides