

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
FavoriteBike.delete_all
Bike.delete_all
User.delete_all

4.times do | i |
  puts "Creating User: user#{i}@example.com"
  user = User.create!(email: "user#{i}@example.com", password: "a", password_confirmation: "a", id: "#{i}")
  rand(1..4).times do |bike_num|
    puts "Creating Bike: bike_#{bike_num}_#{i}"
    user.bikes.create!(title: "bike_#{bike_num}_#{i}", description: "this is bike number #{i} description for #{user.email}")
  end
end

b1 = Bike.create!(title: "48cm Baron", description: "You can't go wrong with this 2010 custom Baron belt drive. Sexy steel. Disc brake heaven. $1500. ")

b2 = Bike.create!(title: "52cm Specialized", description: "Carbon awesomeness. Chain drive. Canti brakes. $1200. ")

b3 = Bike.create!(title: "49cm Fuji Carbon Pro", description: "Steel frame, carbon forks. Canti brakes. Salsa handlebars $850.")

b4 = Bike.create!(title: "57cm Honey", description: "Did someone say custom? Yes we did. Steel. Disc brakes ")

b5 = Bike.create!(title: "44cm Zanc", description: "Zanc? Yes! A Zanconato. Disc brakes, chain drive, Chris King hubs. $2500")

b6 = Bike.create!(title: "56cm Friends Foundry Auger", description: "Alexrims wheelset and Shimano 105 group. $750")

b7 = Bike.create!(title: "2011 Small (5'4-5'7) carbon Blue", description: "DuraAce rear derailleur, Ultegra shifters, SRAM cranks, shorty canti brakes, Thompson seat post, new aluminum Easton 30 ergo bars, Mavic clinchers with Michelin Mud 2s.")

b8 = Bike.create!(title: "55cm Giant", description: "Giant TCX women's cyclocross bike. $850")

b9 = Bike.create!(title: "Felt Breed SSCX 57cm", description: "Velocity rim on Spot Brand rear hub. Avid shorty 4 brakes. Felt Carbon fork. *needs front wheel*
# $400.")



b1 = Bike.find(1)
u1 = User.find(1)
u1.id = User.find(1).id
b1.id = Bike.find(1).id
favorite_bike = FavoriteBike.create!(favorite: true, user_id: u1.id, bike_id: b1.id)
u1.favorite_bikes << favorite_bike
u1.save
puts "favorite_bike for is #{favorite_bike.id}"

b2 = Bike.find(2)
u2 = User.find(2)
u2.id = User.find(2).id
b2.id = Bike.find(2).id
favorite_bike = FavoriteBike.create!(favorite: true, user_id: u2.id, bike_id: b2.id)
u2.favorite_bikes << favorite_bike
u2.save
puts "favorite_bike for is #{favorite_bike.id}"

b3 = Bike.find(3)
u3 = User.find(3)
u3.id = User.find(3).id
b3.id = Bike.find(3).id
favorite_bike = FavoriteBike.create!(favorite: true, user_id: u3.id, bike_id: b3.id)
u3.favorite_bikes << favorite_bike
u3.save
puts "favorite_bike for is #{favorite_bike.id}"

