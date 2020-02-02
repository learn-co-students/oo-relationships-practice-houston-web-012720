
class Artist

  attr_accessor :name, :years_exp, :paintings, :galleries, :cities

  @@all = []

  def initialize(name, years_exp)
    self.name = name
    self.years_exp = years_exp
    self.paintings = []
    self.galleries = []
    self.cities = []
    @@all << self
  end  

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end  

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    paintings.map { |painting| painting.gallery.city }.uniq
  end  

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    total = 0
    @@all.each { |artist| total += artist.years_exp }
    total
  end

  def self.most_prolific

  end  

end  
