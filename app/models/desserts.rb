
class Desserts

  attr_accessor :name, :ingredients, :calories, :bakery

  @@all = []

  def initialize(name, colories, bakery)
    self.name = name
    self.colories = colories
    self.bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

end  

