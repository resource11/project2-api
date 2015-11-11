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

Favorite.delete_all
User.delete_all
Bike.delete_all



5.times do | i |
  puts "Creating User: user#{i}@example.com"
  # User.create!(email: FFaker::Internet.email, password: "password", password_confirmation: "password")
  user = User.create!(email: "user#{i}@example.com", password: "a", password_confirmation: "a")

  rand(1..4).times do |bike_num|
    puts "Creating Bike: bike_#{bike_num}_#{i}"
    user.bikes.create!(title: "bike_#{bike_num}_#{i}", description: "this is bike number #{i} description for #{user.email}")

    # rand(1..3).times do |fav_num|
    #   puts "Creating Favorite: bike_favorite_#{fav_num}_#{i}"
    #   user.favorited_bikes.create!(favorited_bike: "#{bike.id}")
    # end

  end
end

    # rand(1..3).times do |fav_num|
    #   puts "Creating Favorite: bike_favorite_#{fav_num}_#{i}"
    #   user.favorited_bikes.create!(favorited: true)
    # end
