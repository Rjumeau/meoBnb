# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'uri'

User.destroy_all
Flat.destroy_all

puts "Create users..."

user1 = User.create!(email: "cat1@meow.com", password: "secrette", first_name: "Simba")
user2 = User.create!(email: "cat2@meow.com", password: "secrette", first_name: "Nala")

puts "Done !"

puts "Create flats..."

10.times do
  garden_img_file = URI.open("https://unsplash.com/fr/photos/_kPV3GAiqMs")
  Flat.create!(
    owner_id: user1.id,
    name: "Maison avec jardin d'herbes à chats",
    description: "Proches de toutes commodités, Maison de mon humain
                  possède un jardin rempli d'herbe à chat de qualitey",
    price: 130
  ).photos.attach(io: garden_img_file, filename: 'garden-img-file.jpg')
end


10.times do
  cat_tree_file = URI.open('https://unsplash.com/fr/photos/4-j7KGLHn4o')
  Flat.create!(
    owner_id: user2.id,
    name: "Appartement avec griffoir géant",
    description: "Proches de toutes commodités, l'appartement de mon humain
                  possède un griffoir géant pour le plaisir de vos griffes",
    price: 55
  ).photos.attach(io: cat_tree_file, filename: 'cat-tree.jpg')
end

puts "Done !"

puts "Finished !"
