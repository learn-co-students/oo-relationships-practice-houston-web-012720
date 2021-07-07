
class Listing

  attr_accessor :title, :city, :guests, :trips

  @@all = []

  def initialize(title, city)
    self.title = title
    self.city = city
    self.guests = []
    self.trips = []
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end  

  def guests
    trips.map { |trip| trip.guest }.uniq
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    @@all.select { |listing| listing.city == city }
  end

  def self.most_popular
    @@all.max { |listing_a, listing_b| listing_a.trip_count <=> listing_b.trip_count }
  end  

end  
