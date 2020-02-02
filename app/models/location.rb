class Location

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients
        Client.all.select{ |client|
            client.location == self
        }
    end

    def trainers
        clients.map { |client|
            client.trainer
        }
    end

    def self.all
        @@all
    end

    def self.least_clients
        @@all.min_by { |location|
            location.clients.length
        }
    end


    def self.generate
        Location.new(rand_instance_name)
    end
end