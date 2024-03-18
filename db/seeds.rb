# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.create(name:"Divy",platform:"Instagram",date:"27/02/2024")
Post.create(name:"Om",platform:"Facebook",date:"21/02/2024")
Post.create(name:"Tujal",platform:"Snapchat",date:"12/02/2024")
