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

# # 2. Create the instances 🏗️
# puts "Creating restaurants..."
# Restaurant.create!(name: "Noodlehead", address: "375 S Highland Ave, 50206 Pittsburgh, PA", category: "chinese")
# puts "Created Noodlehead"
# Restaurant.create!(name: "LAmour", address: "Lovohaz utca 2-6., 1024 Budapest", category: "french")
# puts "Created LAmour"
# Restaurant.create!(name: "Hello Buda", address: "Torokvesz ut 127., 1025 Budapest", category: "italian")
# puts "Created Hello Buda"
# Restaurant.create!(name: "Daiga Sushi", address: "Lovohaz utca 2-6., 1024 Budapest", category: "japanese")
# puts "Created Daiga Sushi"
# Restaurant.create!(name: "Brasserie", address: "Jokai utca 13., 1066 Budapest", category: "belgian")
# puts "Created Brasserie"

# # 3. Display a message 🎉
# puts "Finished! Created #{Restaurant.count} restaurants."

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

require 'faker'
16.times do |i|
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: CATEGORIES.sample)
  restaurant.save
  puts "created #{i} restaurants"
end
puts "All done!"
