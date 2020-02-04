class Show
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
    
    def on_the_big_screen
        Movie.all.select {|movie| movie.title.include?(self.title)}
    end
end