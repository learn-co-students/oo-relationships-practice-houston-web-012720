class Ingredient
    attr_accessor :calories, :dessert, :ingredient

    @@all = []

    def initialize (item, cal, dessert)
        @ingredient = item
        @calories = cal
        @dessert = dessert
        @@all << self
    end
    
    def self.all
        @@all
    end

    def bakery
    # bakery for that dessert
        dessert.bakery
    end

    def self.find_all_by_name(keyword)
    # return array of all ingredients that include keyword in their name
        result = []
        self.all.each do |ingredient|
            if ingredient.ingredient.include? keyword
                result << ingredient
            end
        end
        result
    end

end






# .find_all_by_name(ingredient)
# should take a string argument return an array of all ingredients that include that string in their name
# .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
# make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')