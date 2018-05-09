# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#test BARS
justins_bar = Bar.create(name: "Justin's Booze House", zip_code: 10004, address: "111 test st. New York, NY")
franks_bar = Bar.create(name: "Frank's", zip_code: 10023, address: "222 testy test st. New York, NY")

#test EVENTS
wow_event = Event.create(name: "Skate or Die", zip_code: 10023, address: "333 event st. New York, NY")
dork_event = Event.create(name: "Books are Cool", zip_code: 10004, address: "444 event st. New York, NY")

#test Users
george_userton = User.create(first_name: "George", last_name: "Userton", age: 45, email: "guserton@cherrytree.com", address: "555 Delaware st. New York, NY", zip_code: 10004)
mallory = User.create(first_name: "Mallory", last_name: "Keyboard", age: 21, email: "mallory@keyboard.com", address: "666 Hell st. New York, NY", zip_code: 10023)
