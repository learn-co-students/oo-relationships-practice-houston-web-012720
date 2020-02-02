class Ingridient

attr_reader :name, :calories

@@all=[]

def initialize (name)
    @name = name
    @calories = rand(50..300)
    @@all << self
end

def dessert
    Dessert.all.find{ |dessert|
        dessert.ingredients.include?(self)
    }
end

def bakery
    dessert.bakery
end

def self.all
    @@all
end

def self.find_all_by_name(ingredient)
    @@all.select { |item|
        item.name.include?(ingredient)
    }
end

#      #dessert
#   - should return a dessert object for that ingredient
#   - #bakery
#     - should return the bakery object for the bakery that uses that ingredient
#   - .all
#     - should return an array of all ingredients
#   - .find_all_by_name(ingredient)
#     - should take a string argument return an array of all ingredients that
#       include that string in their name
#       - .find_all_by_name('chocolate') might return ['chocolate sprinkles',
#         'chocolate mousse', 'chocolate']
#       - make sure you aren't just looking for exact matches (like 'chocolate' ==
#         'chocolate')
end