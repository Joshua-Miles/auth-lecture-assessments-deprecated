# Auth Lecture Assessments

Before all assessments, run `rails s` in your terminal to start the rails app.
Test in the browser by going to http://localhost:3000/travelers/login


### Assessment 1: Secure Passwords

* Add a secure password to the `traveler` model
* Seed the database



### Assessment 2: Authentication

* Handle form submission from the `login` view in the `travelers_controller`:
  * Find a traveler with the username the user provided
  * Use the "authenticate" method to check if the user provided the correct password for that traveler
  * If they did, save the travelers ID in the session



### Assessment 3: Authorization

- In the `application_controller`, create a `current_traveler` method that uses the travelers ID (previously saved in the session) to find a traveler in the database and return them
- In the `tickets_controller`, add logic to keep a user from deleting a ticket that doesn't belong to them
