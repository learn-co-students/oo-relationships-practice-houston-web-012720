require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


5.times do
  Location.generate
end

20.times do
  Trainer.generate
end

100.times do
  Client.generate
end

80.times do
  Client.no_trainer.sample.assign_trainer(Trainer.all.sample)
end
# binding.pry
puts "The best trainer is #{Trainer.most_clients.name}! He trains:"
Trainer.most_clients.clients.each { |client|
  puts "#{client.name} at #{client.location.name}"
}
puts ""
puts "Worst location is #{Location.least_clients.name}, it has only #{Location.least_clients.clients.length} clients"

# 20.times do
#   User.generate
# end

# 10.times do 
#   User.get_random.create_project
# end

# 5000.times do 
#   User.get_random.donate
# end
# puts "highest_pledge"
# User.highest_pledge.print
# puts "multi_pledger"
# User.multi_pledger.each{ |user|
#   user.print
# }
# puts "project_creator"
# User.project_creator.each{ |user|
#   user.print
# }

# puts "most_backers"
# Project.most_backers.print
# puts "above_goal"
# Project.above_goal.each{ |user|
#   user.print
# }
# puts "no_pledges"
# Project.no_pledges.each{ |user|
#   user.print
# }



# - .highest_pledge
#   - returns the user who has made the highest pledge
# - .multi_pledger
#   - returns all users who have pledged to multiple projects
# - .project_creator
#   - returns all users who have created a project

#### Project

# - .no_pledges
#   - returns all projects which have no pledges yet
# - .above_goal
#   - returns all projects which have met or exceeded their pledge goal
# - .most_backers
#   - returns the project with the highest number of backers

# 50.times do
#   Actor.generate
# end
# 150.times do
#   Character.generate
# end
# 10.times do
#   Movie.generate
# end
# 10.times do
#   Show.generate
# end

# Show.all[4].print
# Movie.all[3].print
# Movie.most_actors.print


# 10.times do
#   Driver.generate
#   Passenger.generate
# end

# 100.times do
#   Passenger.get_random.take_a_ride
# end

# puts "premium_members:"
# Passenger.premium_members.each { |passenger|
#   puts "#{passenger.name} - #{passenger.total_distance} miles"
# }

# puts "Average distance is #{Ride.average_distance} miles"

# puts "Drivers who ride more than 100 miles:"
# Driver.mileage_cap(100).each { |driver|
#   puts "#{driver.name} - #{driver.mileage} miles"
# }
# 10.times do
#   bakery = Bakery.new(rand_name)
#   10.times do
#     dessert = Dessert.new(rand_name, bakery)
#     5.times do
#       # binding.pry
#       dessert.add_ingridient(Ingridient.new(rand_name))
#     end
#   end
# end
 
# puts Bakery.all[3].desserts
# # binding.pry
# puts Bakery.all[3].ingredients
# puts Bakery.all[3].average_calories
# puts Bakery.all[3].shopping_list
# puts "find_all"
# rt = Ingridient.find_all_by_name("Scarf")
# rt.each { |r|
#   puts r.name
# }

# l1 = Listing.new("Cosy 1 br","Houston")
# l2 = Listing.new("Cosy 2 br","Houston")
# l3 = Listing.new("a Barn","Austin")

# g1 = Guest.new("User1")
# g2 = Guest.new("User1")
# g3 = Guest.new("User1")
# g4 = Guest.new("User2")
# g5 = Guest.new("User2")
# g6 = Guest.new("User2")
# g7 = Guest.new("User2")


# 50.times do
#    date = "#{rand(1..12)}/#{rand(1..28)}/2019"
#    Trip.new(Listing.all.sample,Guest.all.sample,date)
# end

#  puts Trip.all
 
#  puts Guest.pro_traveller
#  puts Guest.find_all_by_name("User1")
#  puts g1.trips
#  puts g1.listings

#  puts Listing.find_all_by_city("Houston")
#  puts Listing.most_popular
#  puts l1.guests
#  puts l1.trip_count



# binding.pry
0

