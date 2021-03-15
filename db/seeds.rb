# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create(title: "Tom & Jerry")
Movie.create(title: "Chaos Walking")
Movie.create(title: "Boogie")
Movie.create(title: "The Croods: A New Age")

# Admin.create(username:"supderduperuser", password:"rootpassword123" )

# theater = Theater.new(name: "Rails Theater")
# theater.save

Auditorium.create(auditorium_number: 1,seating_capacity: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 2,seating_capacity: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 3,seating_capacity: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 4,seating_capacity: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 5,seating_capacity: 75, theater_id: theater.id)

Showing.create(time: "Mon, 22 Feb 2021 22:30:00 UTC +00:00",movie_id: 1, auditorium_id: 1)
Showing.create(time: "Mon, 22 Feb 2021 24:00:00 UTC +00:00",movie_id: 1, auditorium_id: 2)

Showing.create(time: "Mon, 22 Feb 2021 22:30:00 UTC +00:00",movie_id: 2, auditorium_id: 4)
Showing.create(time: "Mon, 22 Feb 2021 24:00:00 UTC +00:00",movie_id: 3, auditorium_id: 5)

Showing.create(time: "Tue, 23 Feb 2021 22:30:00 UTC +00:00",movie_id: 4, auditorium_id: 5)
Showing.create(time: "Tue, 23 Feb 2021 24:00:00 UTC +00:00",movie_id: 5, auditorium_id: 5)

Sale.create(customer_name:"Shane", customer_email:"shane@gmail.com",showing_id: 1)
Sale.create(customer_name:"Mary", customer_email:"mary@gmail.com",showing_id: 3)
Sale.create(customer_name:"Jon", customer_email:"jon@gmail.com",showing_id: 5)
Sale.create(customer_name:"Frank", customer_email:"frank@gmail.com",showing_id: 6)