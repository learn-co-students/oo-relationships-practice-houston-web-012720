class Bakery

    attr_reader :name

    @@all=[]

    def initialize(name)
        @name = name
        @desserts = []
        @@all << self
    end

    def desserts
        Dessert.all.select{ |desert|
            desert.bakery == self
        }
    end

    def ingredients
        desserts.map{ |desert|
            desert.ingredients
        }.flatten
    end

    def average_calories
        number = desserts.length
        value = desserts.sum { |cal_total = 0, desert|
            cal_total = cal_total + desert.calories
        }
        value/number
    end

    def shopping_list
        ingredients.map { |ingredient|
            ingredient.name
        }
    end
   
    def self.all
        @@all
    end

# - #ingredients
# - should return an array of ingredients for the bakery's desserts
# - #desserts
# - should return an array of desserts the bakery makes
# - #average_calories
# - should return a number totaling the average number of calories for the desserts sold at this bakery
# - .all
# - should return an array of all bakeries
# - #shopping_list
# - should return a string of names for ingredients for the bakery

end