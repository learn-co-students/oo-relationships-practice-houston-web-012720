class Listing

    attr_reader :name, :city

    @@all = []

    def initialize (name, city)
        @name = name
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select{ |trip|
            trip.listing == self
        }
    end

    def trip_count
        trips.length
    end

    def guests
        trips.map{ |trip|
            trip.guest
        }.uniq
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        @@all.select { |listing|
            listing.city == city
        }
    end

    def self.most_popular
        @@all.max_by { |listing|
            listing.trip_count
        }
    end

end



# - #guests
# - returns an array of all guests who have stayed at a listing
# - #trips
# - returns an array of all trips at a listing
# - #trip_count
# - returns the number of trips that have been taken to that listing
# - .all
# - returns an array of all listings
# - .find_all_by_city(city)
# - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
# - finds the listing that has had the most trips