require_relative '../config/environment.rb'
# require 'faker'

def reload
  load 'config/environment.rb'
end

# g1 = Guest.new("Patrick")
# g2 = Guest.new("Hamilton")
# g3 = Guest.new("Beverly")
# g4 = Guest.new("Rebecca")
# g5 = Guest.new("Zod")

# l1 = Listing.new("1 BR Loft", "Shanghai")
# l2 = Listing.new("a hut", "Hanoi")
# l3 = Listing.new("3 Bedroom House", "Galveston")
# l4 = Listing.new("a nicer hut", "Hanoi")

# t1 = Trip.new(g1, l1)
# t2 = Trip.new(g3, l1)
# t3 = Trip.new(g2, l2)
# t4 = Trip.new(g4, l3)
# t5 = Trip.new(g3, l3)
# t6 = Trip.new(g5, l4)

# a = (1..10).to_a

# bakeries = a.map {|i| Bakery.new("Bakery #{i}")}
# desserts = a.map {|i| Dessert.new("Dessert #{i}", bakeries[i-1])}
# ingredients = a.map {|i| Ingredient.new("Ingredient #{i}", desserts[i-1], i)}
# b1 = Bakery.new("L'Omelette au Fromage")
# d1 = Dessert.new("Chocolate Lava Cake", b1)
# d2 = Dessert.new("Banana Split", b1)
# i1 = Ingredient.new("Chocolate", d1, 60)
# i2 = Ingredient.new("Flour", d1, 50)
# i3 = Ingredient.new("Chocolate Syrup", d2, 40)
# i4 = Ingredient.new("Banana", d2, 100)
# i5 = Ingredient.new("Sugar", Dessert.all[2], 40)
# i6 = Ingredient.new("Chocolate", Dessert.all[1], 60)

a1 = Actor.new("Arnold Schwarzenegger")
a2 = Actor.new("Emilia Clarke")
a3 = Actor.new("Mark Hamill")
a4 = Actor.new("Harrison Ford")
a5 = Actor.new("Daisy Ridley")
a6 = Actor.new("Kristen Bell")

m1 = Movie.new("The Terminator")
m2 = Movie.new("Terminator 2")
m3 = Movie.new("Terminator 3")
m4 = Movie.new("Star Wars: A New Hope")
m5 = Movie.new("Star Wars: The Force Awakens")
m6 = Movie.new("Raiders of the Lost Ark")
m7 = Movie.new("Frozen")
m8 = Movie.new("Batman Begins")
m9 = Movie.new("Blade Runner")

s1 = Show.new("Batman")
s2 = Show.new("Veronica Mars")
s3 = Show.new("Game of Thrones")

c1 = Character.new("T-800", a1, m1)
c1.add_media(m2)
c1.add_media(m3)
c2 = Character.new("Sarah Connor", a2, m1)
c3 = Character.new("Daenerys Targaryen", a2, s3)
c4 = Character.new("Luke Skywalker", a3, m4)
c4.add_media(m5)
c5 = Character.new("The Joker", a3, s1)
c6 = Character.new("Han Solo", a4, m4)
c6.add_media(m5)
c7 = Character.new("Dr. Indiana Jones", a4, m6)
c8 = Character.new("Rick Deckard", a4, m9)
c9 = Character.new("Rey", a5, m5)
c10 = Character.new("Anna", a6, m7)
c11 = Character.new("Veronica Mars", a6, s2)


binding.pry
0