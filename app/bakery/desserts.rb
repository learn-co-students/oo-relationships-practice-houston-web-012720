class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all 
    # all dessert instances
        @@all
    end

    def ingredients 
    # array of ingredients for the bakery's desserts 
        Ingredient.all.select {|i| i.dessert == self}
    end
    
    def total_cal
    #total number of calories in dessert
        ingredients.sum {|total = 0, i| total += i.calories}
    end
end



