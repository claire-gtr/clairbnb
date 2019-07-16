# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Flat.destroy_all
User.destroy_all


claire = User.create!(email: "claire@gmail.com", password: "testclaire")
ines = User.create!(email: "ines@gmail.com", password: "testines")
max = User.create!(email: "max@gmail.com", password: "testmax")

flat1 = Flat.create!(title: "Deux pièces centre ville Bordeaux", address: "153 rue sainte catherine, 33000 Bordeaux", user: claire, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ad eveniet perspiciatis totam inventore modi minima quam officia incidunt numquam nihil rem laborum fugit quia, quos ea! Pariatur, iusto quis?")
flat1 = Flat.create!(title: "T3 bien placé Paris", user: max, address: "28 rue des Bahutiers, 33000 Bordeaux", description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ad eveniet perspiciatis totam inventore modi minima quam officia incidunt numquam nihil rem laborum fugit quia, quos ea! Pariatur, iusto quis?")
flat1 = Flat.create!(title: "Appart refait à neuf 4 personnes Bordeaux", address: "107 cours Balguerie-Stuttenberg, 33000 Bordeaux", user: claire, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ad eveniet perspiciatis totam inventore modi minima quam officia incidunt numquam nihil rem laborum fugit quia, quos ea! Pariatur, iusto quis?")
flat1 = Flat.create!(title: "Maison de ville Bordeaux", address: "10 rue du cloître, 33000 Bordeaux", user: ines, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ad eveniet perspiciatis totam inventore modi minima quam officia incidunt numquam nihil rem laborum fugit quia, quos ea! Pariatur, iusto quis?")
flat1 = Flat.create!(title: "Stufio pour couple Toulouse", address: "140 rue sainte catherine, 33000 Bordeaux", user: max, description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ad eveniet perspiciatis totam inventore modi minima quam officia incidunt numquam nihil rem laborum fugit quia, quos ea! Pariatur, iusto quis?")

puts "Database ok"
