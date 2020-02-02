require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("Bob", 32)
a2 = Artist.new("Michelangelo", 533) 
a3 = Artist.new("Shepard", 28)

g1 = Gallery.new("Totally A Real Art Gallery", "Tokyo")
g2 = Gallery.new("Totally Another Real Art Gallery", "Berlin")
g3 = Gallery.new("Totally Not A Real Art Gallery", "New York")
g4 = Gallery.new("Totally A Burger Place", "Houston")

p3 = Painting.new("The Creation of Adam 2", 1000034, a2, g3)
p2 = Painting.new("Happy Little Trees", 845, a1, g3)
p4 = Painting.new("OBEY", 824003, a3, g3)
p1 = Painting.new("The Creation of Adam", 32000000, a2, g3)

binding.pry
0
