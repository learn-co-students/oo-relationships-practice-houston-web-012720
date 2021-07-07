class Dessert
    attr_accessor :bakery, :dessert_name

    @@all = []

    def initialize(name, bakery)
        @dessert_name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    def calories
        ingredients.reduce(0) {|sum, ingredient| sum + ingredient.calories}
    end

end