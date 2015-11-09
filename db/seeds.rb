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

User.delete_all

5.times do | i |
  puts "Creating User: user#{i}@example.com"
  # User.create!(email: FFaker::Internet.email, password: "password", password_confirmation: "password")
  user = User.create!(email: "user#{i}@example.com", password: "a", password_confirmation: "a")

  rand(1..4).times do |bike_num|
    puts "Creating Bike: bike_#{bike_num}_#{i}"
    user.bikes.create!(name: "bike_#{bike_num}_#{i}", description: "this is bike number #{i} description for #{user.email}")
  end
end


