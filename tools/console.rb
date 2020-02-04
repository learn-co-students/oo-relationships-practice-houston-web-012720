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

a = (1..10).to_a

bakeries = a.map {|i| Bakery.new("Bakery #{i}")}
desserts = a.map {|i| Dessert.new("Dessert #{i}", bakeries[i-1])}
ingredients = a.map {|i| Ingredient.new("Ingredient #{i}", desserts[i-1], i)}
b1 = Bakery.new("L'Omelette au Fromage")
d1 = Dessert.new("Chocolate Lava Cake", b1)
d2 = Dessert.new("Banana Split", b1)
i1 = Ingredient.new("Chocolate", d1, 60)
i2 = Ingredient.new("Flour", d1, 50)
i3 = Ingredient.new("Chocolate Syrup", d2, 40)
i4 = Ingredient.new("Banana", d2, 100)
i5 = Ingredient.new("Sugar", Dessert.all[2], 40)
i6 = Ingredient.new("Chocolate", Dessert.all[1], 60)

binding.pry
0