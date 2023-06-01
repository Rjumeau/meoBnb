# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Flat.destroy_all

puts "Create users..."

User.create(email: "cat1@meow.com", password: "secrette", first_name: "Simba")
User.create(email: "cat2@meow.com", password: "secrette", first_name: "Nala")

puts "Done !"

puts "Create flats..."
Flat.create(
  owner_id: 1,
  name: "Maison avec jardin d'herbes à chats",
  description: "Proches de toutes commodités, Maison de mon humain
                possède un jardin rempli d'herbe à chat de qualitey",
  price: 130
)

10.times do
  Flat.create(
    owner_id: 2,
    name: "Appartement avec griffoir géant",
    description: "Proches de toutes commodités, l'appartement de mon humain
                  possède un griffoir géant pour le plaisir de vos griffes",
    price: 55
  )
end

puts "Done !"

puts "Finished !"
