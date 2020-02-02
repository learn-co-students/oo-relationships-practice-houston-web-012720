class Gallery

  attr_accessor :name, :city, :paintings, :artists

  @@all = []

  def initialize(name, city)
    self.name = name
    self.city = city
    self.paintings = []
    self.artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map { |painting| painting.artist }
  end  

  def artists_names
    artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    paintings.max { |painting| painting.price <=> painting.price }
  end  

end

