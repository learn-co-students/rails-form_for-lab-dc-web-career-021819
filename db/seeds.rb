# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: "AA", room_number: 101)
SchoolClass.create(title: "BB", room_number: 102)
Student.create(first_name: "Stephen", last_name: "Yoon")
Student.create(first_name: "Ammar", last_name: "Ali")
