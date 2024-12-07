# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Plant.destroy_all
User.delete_all

plant_names = %w[rose tulip poppy dandellion lilas]
user_names = %w[Bob Alice John]

user_names.each do |name|
  new_user = User.new(name: name)
  new_user.save
end

plant_names.each_with_index do |name, index|
  if index == 0
    new_plant = Plant.new(name: name, family: 'flower', description: 'this is a flower', user_id: User.last.id)
  else
    new_plant = Plant.new(name: name, family: 'flower', description: 'this is a flower')
  end
  new_plant.save
end
