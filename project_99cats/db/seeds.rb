# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all

cat1 = Cat.create!(name: "Mittens", birth_date: '2017/12/25', color: 'black', sex: 'M', description: "Christmas Cat")
cat2 = Cat.create!(name: "Snowball", birth_date: '2018/01/01', color: 'orange', sex: 'F', description: "The Fifth")
cat3 = Cat.create!(name: "Tom", birth_date: '1940/04/20', color: 'white', sex: 'M', description: "What time is it?")

CatRentalRequest.destroy_all

CatRentalRequest.create!(cat_id: cat1.id, start_date: "2018/05/08", end_date: "2018/05/11", status: "APPROVED")
CatRentalRequest.create!(cat_id: cat2.id, start_date: "2017/06/08", end_date: "2017/06/11", status: "APPROVED")
CatRentalRequest.create!(cat_id: cat3.id, start_date: "2016/07/08", end_date: "2016/07/11", status: "APPROVED")

CatRentalRequest.create!(cat_id: cat1.id, start_date: "2015/05/08", end_date: "2015/05/11", status: "APPROVED")
CatRentalRequest.create!(cat_id: cat2.id, start_date: "2014/06/08", end_date: "2014/06/11", status: "APPROVED")
CatRentalRequest.create!(cat_id: cat3.id, start_date: "2013/07/08", end_date: "2013/07/11", status: "APPROVED")
