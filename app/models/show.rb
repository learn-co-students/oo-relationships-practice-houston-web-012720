class Show

    attr_reader :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def episodes
        Episode.all.select{ |episode|
            episode.show == self
        }
    end

    def characters
        episodes.map { |episode|
            episode.characters
        }.flatten.uniq
    end

    def get_last_episode
        if episodes.length == 0
            nil
        else
            episodes[-1]
        end
    end

    def print
        puts "Show: #{@name}"
        episodes.each { |episode|
            episode.print
        }
    end

    def on_the_big_screen
        Movie.all.find { |movie|
            movie.name == @name
        }
    end

    def self.all
        @@all
    end

    def self.get_random
        @@all.sample
    end

    def self.generate
        me = Show.new(rand_instance_name)
        ep_count = rand(5..10)
        ep_count.times do
            Episode.generate(me)
        end
    end

end