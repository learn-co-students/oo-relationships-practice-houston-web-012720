
class Driver 
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def rides 
        Ride.all.select {|ride| ride.driver == self}
    end


    def passenger_names
        rides.map {|ride| ride.passenger}.uniq
    end

    def mileage
        total = 0 
        rides.each {|ride| total += ride.distance}
        total
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.mileage > distance}
    end

end