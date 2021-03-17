
Movie.create(title: "Tom & Jerry")
Movie.create(title: "Chaos Walking")
Movie.create(title: "Boogie")
Movie.create(title: "The Croods: A New Age")

theater = Theater.new(name: "LaunchPad Movie-Lab")
theater.save

Auditorium.create(auditorium_number: 1,available_seats: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 2,available_seats: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 3,available_seats: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 4,available_seats: 75, theater_id: theater.id)
Auditorium.create(auditorium_number: 5,available_seats: 75, theater_id: theater.id)

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