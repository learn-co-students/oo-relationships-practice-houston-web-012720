class Character
    attr_accessor :name, :production, :actor

    @@all = []

    def initialize (name, production, actor)
        @name = name
        @production = production
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
    # returns the character with the most appearances in films/television shows
        char_hash = {}
        Character.all.each do |char| 
            if char_hash.keys.include? char.name
                char_hash[char.name] += 1
            else 
                char_hash[char.name] = 1
            end
        end
        char = char_hash.max_by{|char, tally| tally}[0]
    end

end
