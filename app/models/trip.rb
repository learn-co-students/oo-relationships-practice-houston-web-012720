
class Trip

  attr_accessor :listing, :guest

  @@all = []

  def initialize(listing, guest)
    self.listing = listing
    self.guest = guest
    @@all << self
  end

  def self.all
    @@all
  end

end  
