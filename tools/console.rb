require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Patrick")
g2 = Guest.new("Hamilton")
g3 = Guest.new("Beverly")
g4 = Guest.new("Rebecca")
g5 = Guest.new("Zod")

l1 = Listing.new("1 BR Loft", "Shanghai")
l2 = Listing.new("a hut", "Hanoi")
l3 = Listing.new("3 Bedroom House", "Galveston")
l4 = Listing.new("a nicer hut", "Hanoi")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g3, l1)
t3 = Trip.new(g2, l2)
t4 = Trip.new(g4, l3)
t5 = Trip.new(g3, l3)
t6 = Trip.new(g5, l4)


binding.pry
0