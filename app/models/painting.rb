
class Painting

  attr_accessor :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery = nil)
    self.title = title
    self.price = price
    self.artist = artist
    self.gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    @@all.each { |painting| total += painting.price }
    total
  end  

end  
