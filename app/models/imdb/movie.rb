class Movie
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|character| character.media.include?(self)}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def self.most_actors
        self.all.max_by {|movie| movie.actors.count}
    end
    
end