class Ingredient
    attr_accessor :dessert, :calories, :ingredient

    @@all = []

    def initialize(ingredient, dessert, calories)
        @ingredient = ingredient
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        all.select {|ing| ing.ingredient.include?(ingredient)}
    end
end