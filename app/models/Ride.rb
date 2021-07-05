# driver <- ride -> passener 
# name  (driver+passenger+distance)  -name
class Ride 
    @@all = []
    attr_accessor :driver, :distance , :passenger
    def initialize (driver , distance , passenger)
        @drive = drive
        @distance = distance
        @passenger = passenger
        @@all << self
    end 
    def self.all
        @@all 
    end
    def ride_count
        @@all.count
    end 
    def self.average_distance
        # should find the average distance of all rides
        total = 0 
        @@all.map do |ride|
           total += ride.distance 
        end
        total/ride_count
    end
      

end 