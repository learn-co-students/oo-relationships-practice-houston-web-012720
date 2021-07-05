require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


FIRST = "Barrack Bart Lady Kanye Sir Anam".split(" ")
LAST = "Obama Putin West Soomro Trump".split(" ")
CITIES = "Houston Moscow Seattle Dallas Austin Miama".split(" ")
ADJ = "Tiny Cozy Rustic Modern Vintage Huge Fancy".split(" ")
PLACE = "Home Treehouse Cabin Farm Loft Mansion".split(" ")

5.times do
  Guest.new(FIRST.sample + " " + LAST.sample)
end

5.times do
  Listing.new(ADJ.sample + " " + PLACE.sample, CITIES.sample)
end


10.times do
  Trip.new(Guest.all.sample, Listing.all.sample)
end


# g1 = Guest.new("Kanye West")
# g2 = Guest.new("Beyonce")
# g3 = Guest.new("Obama")
# g4 = Guest.new("Kanye West")


# l1 = Listing.new("Cozy Cabin", "Houston")
# l2 = Listing.new("Tiny Treehouse", "Seattle")
# l3 = Listing.new("Modern Loft", "Moscow")

# t1 = Trip.new(g1, l2)
# t2 = Trip.new(g1, l2)
# t3 = Trip.new(g2, l3)
# t4 = Trip.new(g3, l2)









binding.pry
0