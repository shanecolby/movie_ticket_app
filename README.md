# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



THOUGHT PROCESS (MOVIE TICKET APP)

CONTROLLERS

ADMIN: controller used to allow access for admin/admins. This allows an admin to view all sales and update showings (seating updates, time, movie, etc.) This allows the manager to make changes and maintain the app.

THEATER: controller used to display active theaters. This allows for future locations to be added without having to make a separate application.

AUDITORIUMS: controller used hold specific information about the theater and auditorium information, such as id and seat capacity.

SHOWINGS: controller used to display showing times, available seats for a selected movie, movie id and auditorium id. Available seats are calculated by taking the seating capacity of the auditorium and minus the number of sales for that particular showing.

MOVIES: controller used to display movie title and id.

SALES: controller used to ticket purchases. Once a customer finds a particular showing, they will click purchase. This will create an order that requests customer name, email, showing id, credit card and expiration date.




SUCCESS: Schema, displaying most data (frontend/backend), making available seats work, doing it without help.

SETBACKS: displaying certain data (front end), updating/creating sales (back end), action mailer

COULD DO DIFFERETLY: manage time more effectively to get mvp working before adding additional material. Learn how to display backend data without creating an actual front end (erb).

TAKE HOMES: fantastic way to test my skills. It exposed some weaknesses and allows me to prioritize what I need to practice/learn. Will do more tech challenges for practice moving forward.


USING THE APP

HOME PAGE
-allows user to click a button to view all the current movies playing at the theater.

SHOWINGS PAGE
-allows user to click a button to display all current movie information including time, auditorium number and available seats. This page is also used to purchse a specific movie and time. This is done by clicking the "purchse" button. That button would bring you to a sales/create page where the user enters the required information to complete the purchase. Once the purchase is complete, action mailer will take the users email and send a sale receipt.

THEATERS PAGE
-This page shows all the theaters associated with the application. For now, there is just one but if the company were to expand, we can add locations without have to restrucure the application. 

ADMIN ACCESS PAGE
-This page is for admin access. The main button will display total sales. The admin should also be able to update auditorium information, seating and movies.







