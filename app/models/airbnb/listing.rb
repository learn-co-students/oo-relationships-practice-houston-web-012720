class Listing
    attr_accessor
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

    def guests
       trips.map {|trip| trip.guest}.uniq
    end

    def self.find_all_by_city(city)
        all.select {|listing| listing.city == city}
    end

    def self.most_popular
        all.max {|a, b| a.trip_count <=> b.trip_count}
    end
end
