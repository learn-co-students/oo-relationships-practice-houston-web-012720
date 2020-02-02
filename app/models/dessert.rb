class Dessert

    attr_reader :ingredients, :bakery, :name

    @@all=[]

    def initialize (name, bakery)
        @name = name
        @ingredients = []
        @bakery = bakery
        @@all << self
    end

    def add_ingridient(ingredient)
        @ingredients << ingredient
    end

    def calories
        @ingredients.sum { |sum = 0, ingridient|
            sum = sum + ingridient.calories
        }
    end

    def self.all
        @@all
    end



#     - #ingredients
#   - should return an array of ingredients for the dessert
# - #bakery
#   - should return the bakery object for the dessert
# - #calories
#   - should return a number totaling all the calories for all the ingredients included in that dessert
# - .all
#   - should return an array of all desserts

end