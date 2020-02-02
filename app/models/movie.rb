class Movie

    attr_reader :name, :characters

    @@all=[]

    def initialize(name, characters)
        @name = name
        @characters = characters
        @@all << self
    end

    def actors
        @characters.map { |character|
            character.actor
    }.uniq
    end

    def print
        puts "Movie title: #{self.name}"
        characters.each { |character|
            puts "   #{character.actor.name} plays #{character.name}"
        }
    end 

    def self.most_actors
        @@all.max_by { |movie|
            movie.actors.length
        }
    end

    def self.all
        @@all
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        chars_random_count = rand(5..15)
        random_chars = []
        while random_chars.length < chars_random_count do
            random_chars << Character.get_random
            random_chars = random_chars.uniq
        end
        Movie.new(rand_instance_name, random_chars)
    end

end