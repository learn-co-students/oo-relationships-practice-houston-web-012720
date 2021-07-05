require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


b1 = Bakery.new("Yummies")
b2 = Bakery.new("Tasties")
b3 = Bakery.new("Yummers")

d1 = Dessert.new("Brownies", b1)
d2 = Dessert.new("Cookies", b2)
d3 = Dessert.new("Strudels", b3)
d4 = Dessert.new("Churros", b3)

i1 = Ingredient.new("fun magic", 150, d1)
i2 = Ingredient.new("warmth", 150, d1)
i3 = Ingredient.new("joy", 100, d2)
i4 = Ingredient.new("happiness", 120, d3)
i5 = Ingredient.new("love", 140, d4)
i6 = Ingredient.new("fun", 140, d4)


binding.pry 
0







