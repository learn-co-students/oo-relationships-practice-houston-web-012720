
class Ride 
    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.total_distance
        total = 0 
        self.all.each {|ride| total += ride.distance}
        total
    end

    def self.average_distance
        self.total_distance / self.all.count
    end
    
end