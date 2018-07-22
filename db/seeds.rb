# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#clear the table before we seed
Car.destroy_all

json = ActiveSupport::JSON.decode(File.read('db/car.json'))

json['car'].each do |item|
  new_car = Car.new
  new_car.brand = item['brand']
  new_car.plate_number = item['plate_number']
  new_car.save
end

User.destroy_all

json = ActiveSupport::JSON.decode(File.read('db/user.json'))

json['user'].each do |item|
  new_user = User.new
  new_user.name = item['name']
  new_user.save
end

Space.destroy_all

json = ActiveSupport::JSON.decode(File.read('db/space.json'))

json['space'].each do |item|
  new_space = Space.new
  new_space.slot = item['slot']
  new_space.save
end