class Movie
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
        Character.all.select {|char| char.production == self}.uniq
    end

    def actors 
        characters.map {|char| char.actor}.uniq
    end

    def self.most_actors 
    # return the movie which has the most actors in it
        count = 0
        movie = nil
        self.all.each do |mov| 
            if mov.characters.count > count
                count = mov.characters.count
                movie = mov
            end
        end
        movie
    end
end

