class Actor
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
        Character.all.select {|c| c.actor == self}
    end

    def productions
        characters.map {|char| char.production}
    end

    def movies
        productions.select {|prod| prod.class == Movie}
    end

    def shows
        productions.select {|prod| prod.class == Show}
    end

    def self.most_characters
    # return the actor with the most different characters played.
        Actor.all.max_by {|a| a.characters.count}
    end

end
