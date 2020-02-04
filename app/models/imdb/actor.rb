class Actor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select {|char| char.actor == self}
    end

    def media
        characters.map {|character| character.media}.flatten
    end

    def self.most_characters
        self.all.max_by {|actor| actor.characters.count}
    end
end