
class Bakery

  attr_accessor :ingredients, :desserts

  @@all = []

  def initialize()
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Desserts.all.select { |d| d.bakery == self }
  end  

  def ingredients
    desserts.map { |d| d.ingredients }.uniq
  end  

  def average_calories
  end

  def shopping_list
  end

end

