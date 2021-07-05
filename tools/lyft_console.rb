require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

d1 = Driver.new("assad")
d2 = Driver.new("sohail")
d3 = Driver.new("anam")
d4 = Driver.new("sikender")


p1 = Passenger.new("sanam")
p2 = Passenger.new("jaleesa")

r1 = Ride.new(d2,p1,99)
r2 = Ride.new(d1,p1,2)
r3 = Ride.new(d2,p2,199)
r4 = Ride.new(d2,p2,0.1)
r5 = Ride.new(d2,p2,0.2)
r6 = Ride.new(d4,p1,250)



binding.pry
0
