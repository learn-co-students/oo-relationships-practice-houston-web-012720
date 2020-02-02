class Episode

    attr_reader :name, :characters, :show

    @@all=[]

    def initialize(show, counter, name, characters)
        @show = show
        @counter = counter
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
        puts "   Episode ##{@counter} title: #{@name}"
        characters.each { |character|
            puts "      #{character.actor.name} plays #{character.name}"
        }
    end 

    def self.all
        @@all
    end

    def self.get_random
        @@all.sample
    end

    def self.generate(show)
        chars_random_count = rand(5..15)
        random_chars = []
        if show.get_last_episode
            while random_chars.length < (show.get_last_episode.characters.length - show.get_last_episode.characters.length / 10).to_i  do
                random_chars << show.get_last_episode.characters.sample
                random_chars = random_chars.uniq
            end
        end
        while random_chars.length < chars_random_count do
            random_chars << Character.get_random
            random_chars = random_chars.uniq
        end
        Episode.new(show, (show.episodes.length + 1), rand_instance_name, random_chars)
    end
end