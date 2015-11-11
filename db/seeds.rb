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

# FavoriteBike.delete_all
# Bike.delete_all
# User.delete_all



# 5.times do | i |
#   puts "Creating User: user#{i}@example.com"
#   user = User.create!(email: "user#{i}@example.com", password: "a", password_confirmation: "a")

#   rand(1..4).times do |bike_num|
#     puts "Creating Bike: bike_#{bike_num}_#{i}"
#     user.bikes.create!(title: "bike_#{bike_num}_#{i}", description: "this is bike number #{i} description for #{user.email}")
#   end

# end

# b1 = Bike.last
# u1 = User.last
# u1.id = User.last.id
# b1.id = Bike.last.id
# favorite_bike = FavoriteBike.create!(favorite: true, user_id: u1.id, bike_id: b1.id)
# u1.favorite_bikes << favorite_bike
# puts "favorite_bike is #{favorite_bike.id}"

