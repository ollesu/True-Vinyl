# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!({email: "sarahsongs@gmail.com", password: "123456"})
User.create!({email: "mikemusics@gmail.com", password: "123456"})
Vinyl.create!({name: "Penny Lane", genre: "Pop", artist: "The Beatles",
  description: "Classic Beatles song with Strawberry Fields as a B side", condition: "Perfect condition",
  photo: "x",
  seller_id: "1"})
Vinyl.create!({name: "Firestarter", genre: "Pop", artist: "Prodigy",
  description: "I'm a firestarter", condition: "Perfect condition",
  photo: "x",
  seller_id: "2"})


