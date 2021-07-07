class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        desserts.map {|dessert| dessert.ingredients}.flatten
    end

    def average_calories
        ingredients.reduce(0) {|sum, ingredient| sum + ingredient.calories} / desserts.count
    end

    def shopping_list
        ingredients.map {|ingredient| ingredient.ingredient}
    end

end