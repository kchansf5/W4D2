# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

Cat.create!(name: "Mittens", birth_date: '2017/12/25', color: 'black', sex: 'M', description: "Christmas Cat")
Cat.create!(name: "Snowball", birth_date: '2018/01/01', color: 'orange', sex: 'F', description: "The Fifth")
Cat.create!(name: "Tom", birth_date: '1940/04/20', color: 'white', sex: 'M', description: "What time is it?")
