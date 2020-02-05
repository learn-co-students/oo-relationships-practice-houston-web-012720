class Bakery 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
    # all bakery instances
        @@all
    end

    def desserts
    # array of desserts at this bakery 
        Dessert.all.select {|d| d.bakery == self}
    end

    def ingredients 
    # array of ingredients for the bakery's desserts 
    # .flatten because d.ingredients returns an array and goes into desserts.map which also returns an array
        desserts.map {|d| d.ingredients}.flatten 
    end

    def average_calories
    # average number of calories for all the desserts at the this bakery
        total_cal = ingredients.sum {|total = 0, i| total + i.calories}
        total = total_cal / desserts.length
    end

    def shopping_list
    # string of names for ingredients for the bakery
        arr = ingredients.map {|i| i.ingredient}
        arr.join(", ")
    end
end

