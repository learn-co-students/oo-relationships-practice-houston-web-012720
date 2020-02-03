
class Ingredients

  attr_accessor :dessert, :bakery

  @@all = []

  def initialize(name, dessert)
    self.name = name
    self.dessert = dessert
    self.bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
  end

  def self.find_all_by_name(name)
  end

end  
