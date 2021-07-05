class Show
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters 
        Character.all.select {|char| char.production == self}
    end

    def actors
        characters.map {|char| char.actor}
    end

    def on_the_big_screen
    # return movies that share the same name as the show
        Movie.all.select {|mov| mov.name.include? self.name}
    end
end

