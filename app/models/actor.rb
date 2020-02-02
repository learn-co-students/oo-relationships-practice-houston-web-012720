class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Character.all.select{ |character|
            character.actor == self
        }
    end

    def self.most_characters
        @@all.max_by { |actor|
            actor.character.length
        }
    end

    def print
        puts "Great actor #{@name}"
        characters.each{ |character|
            
        }
    end

    def self.all
        @@all
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        Actor.new(rand_name)
    end

end