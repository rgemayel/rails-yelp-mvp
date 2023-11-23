# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

pastapesto = {name: "Pasta Pesto", address: "London Tower", category: "chinese",phone_number: "118 218"}
bigbadburger = {name:  "BigBadBurger", address: "AMERICA (all cities)", category: "belgian"}
omolette = {name: "Omolette", address: "Eiffel tower", category: "french",phone_number: "118 218"}
fatcaprisun = {name: "Fat Caprisun", address: "Swimming pool", category: "belgian",phone_number: "123"}
cronssontbuguette = {name: "Cronssont Bugette", address: "Under some paris bridge", category: "chinese",phone_number: "000"}

[pastapesto, bigbadburger, omolette, fatcaprisun, cronssontbuguette].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "ITS DONE!!!!!"
