require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

## AIRBNB
guest1 = Guest.new("Charlie")
guest2 = Guest.new("Sarah")
listing1 = Listing.new("Country Abode", "Huntsville")
listing2 = Listing.new("Urban Center", "Houston")
guest1.book_trip(listing1)
guest2.book_trip(listing1)
guest2.book_trip(listing2)

## LYFT
driver1 = Driver.new("Baby Driver")
passenger1 = Passenger.new("Aziz Ansari")

ride1 = Ride.new(passenger1, driver1, 14)
ride2 = Ride.new(passenger1, driver1, 26)
ride3 = Ride.new(passenger1, driver1, 32)

binding.pry
0
