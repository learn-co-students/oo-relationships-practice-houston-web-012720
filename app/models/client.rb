class Client

    attr_reader :name
    attr_accessor :trainer, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

    def self.all
        @@all
    end

    def self.no_trainer
        @@all.select { |client|
            client.trainer == nil
        }
    end

    def self.generate
       
        Client.new(rand_name, Location.all.sample)
    end

end