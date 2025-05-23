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
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 43 54 23 31", category: "french" },
  { name: "Sushi Zen", address: "Tokyo", phone_number: "81 3-1234-5678", category: "japanese" },
  { name: "Pasta Fiesta", address: "Rome", phone_number: "06 1234 5678", category: "italian" },
  { name: "Wok Express", address: "Beijing", phone_number: "010 1234 5678", category: "chinese" },
  { name: "Frites & Moules", address: "Brussels", phone_number: "02 123 45 67", category: "belgian" }
]

restaurants.each do |attrs|
  Restaurant.create!(attrs)
end

puts "Finished creating restaurants!"
