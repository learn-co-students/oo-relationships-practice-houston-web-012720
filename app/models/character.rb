class Character

    attr_reader :name, :actor

    @@all=[]

    def initialize (name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def events
        Episode.all.select{ |show|
            show.characters.include?(self)
        } + Movie.all.select{ |movie|
            movie.characters.include?(self)
        }
    end

    def print
        puts "#{@name} played by #{actor}"
    end



    def self.all
        @@all
    end

    def self.most_appearances
        @@all.max_by{ |character|
            characters.events
        }
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        Character.new(rand_name, Actor.get_random)
    end


end