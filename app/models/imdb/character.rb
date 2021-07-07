class Character
    attr_accessor 
    attr_reader :name, :actor, :media

    @@all = []

    def initialize(name, actor, media)
        @name = name
        @actor = actor
        @media = []
        @media << media
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_media(media)
        @media << media
    end

    def self.most_appearances
        self.all.max_by {|char| char.media.count}
    end

end