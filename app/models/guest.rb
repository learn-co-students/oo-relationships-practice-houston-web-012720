
class Guest

  attr_accessor :name, :listings, :trips

  @@all = []

  def initialize(name)
    self.name = name
    self.listings = []
    self.trips = []
    @@all << self
  end  

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end  

  def listings
    trips.map { |trip| trip.listing }.uniq
  end  

  def book_trip(listing)
    Trip.new(listing, self)
  end  

  def trip_count
    trips.count
  end

  def self.pro_traveller
    @@all.select { |guest| guest.trip_count > 1 }
  end

  def self.find_all_by_name(name)
    @@all.select { |guest| guest.name == name }
  end

end  

