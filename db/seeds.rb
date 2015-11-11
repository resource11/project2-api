# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# %w(and dna dan nda).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email, password: 'abc123',
#                password_confirmation: 'abc123')
# end

# require 'ffaker'

FavoriteBike.delete_all
Bike.delete_all
User.delete_all



5.times do | i |
  puts "Creating User: user#{i}@example.com"
  # User.create!(email: FFaker::Internet.email, password: "password", password_confirmation: "password")
  user = User.create!(email: "user#{i}@example.com", password: "a", password_confirmation: "a")

  rand(1..4).times do |bike_num|
    puts "Creating Bike: bike_#{bike_num}_#{i}"
    user.bikes.create!(title: "bike_#{bike_num}_#{i}", description: "this is bike number #{i} description for #{user.email}")
  end

end

b1 = Bike.last
puts "#{b1.id}"
u1 = Bike.last
favorite_bike = FavoriteBike.create!()
u1.favorite_bikes << favorite_bike
  puts "favorite_bike is #{favorite_bike.id}"

  # favorite_bike = FavoriteBike.create!(favorite: true, user: "#{user(id)}", bike: "#{bikes(id)}")
  # puts "favorite_bike is #{favorite_bike}"

  # 3.times do |fav_bike|
  #   puts "Creating Favorite_bike: bike_favorite_#{favorite_bike}_#{fav_bike}"
  #   favorite_bike.create!(favorite: true)
  # end


