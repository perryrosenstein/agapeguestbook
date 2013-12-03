# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resident.create(name:"Perry Rosenstein", fbid: "203269")
Resident.create(name:"Justin Rosenstein", fbid: "203269")
Resident.create(name:"Rachel Morrissey", fbid: "203269")
Resident.create(name:"Jordan Grader", fbid: "203269")
Resident.create(name:"Ellie MacBride", fbid: "203269")
Resident.create(name:"Dillon Petrillo", fbid: "203269")
Resident.create(name:"Cory Rae Shaw", fbid: "203269")
Resident.create(name:"Jon Mahler", fbid: "203269")
Resident.create(name:"Keegan Olton", fbid: "203269")
Resident.create(name:"Alex Green", fbid: "203269")
Resident.create(name:"Ashley Meyer", fbid: "203269")

User.create(name: "Alex Kiselev",
            email: "akiselev@openindustrial.org",
            fbid: "655837065",
            host: 10,
            arrival_date: "2013-09-01",
            departure_date: "2013-12-01",
            where_from: 'outer space',
            why_in_sf: 'coding out of control'
)
User.create(name: "Ian Rowe",
            email: "ian@ian.com ",
            fbid: "691247078",
            host: 6,
            arrival_date: "2013-10-05",
            departure_date: "2013-12-31",
            where_from: 'Wyoming',
            why_in_sf: 'Work at Airbnb, hang with Dillon, move myself to SF!'
)
