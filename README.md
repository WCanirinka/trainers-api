# README

# API Project


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
## The backend API

The back-end consists of an API that receives a message and answers it with data from a database. The database is composed of three tables, to know, one for user data, one for instructors data, and one for classes.

### Data in the user table

* name
* email
* password_digest


### Data in instructors table

* name
* trainingType
* gymName
* instImage - Instructor's image
* gymImage - Dragon's image

### Data in gym_classes table

* classTime
* gym_instructor_id
* status - Boolean (not used)
* user_id


### How to use it

Base URL: https://trainers-appointment-api.herokuapp.com


#### End points

*/users*

* **GET** - to receive an object with all users
* **POST** - to create a new user - with parameters:
  * name
  * email
  * password
  * password_confirmation

*/users/:id*

* **PATCH** - to edit a user - with parameters:
  * name
  * email
  * password
  * password_confirmation
* **GET** - to receive a specific user's data
* **DELETE** - to delete a user

*/login*

* **GET** - to check login parameters - with parameters:
  * email
  * password

*/gym_instructors*

* **GET** - to receive an object with all users
* **POST** - to create a new instructor - with parameters:
  * name
  * instImage
  * gymName
  * trainingType
  * gymImage

*instructors/id*

* **GET** - to receive a specific instructor's data

*/gym_classes*

* **GET** - to receive an object with all the classes
* **POST** - to create a new class - with parameters:
  * instructor_id
  * user_id
  * classTime
  * status

*gym_classes/:id*

* **DELETE** - to delete a specific class


#### Local usage

To use this API locally, follow the steps:

* Download the repository as zip
* Extract the data
* Open your terminal and navigate to repository's folder
* Run:
  * Bundle install
  * Rails db:create
  * Rails db:migrate
  * Rails db:seed
  * Rails server


### Technologies used

To create this project I used:

* Ruby on Rails
* bcrypt gem
* Heroku
* Postgresql
* rspec


## Contact

Author: Wilfried Canirinka

Follow me on [Twitter][wil-twitter],  visit my [Github portfolio][wil-github], my [Linkedin][wil-linkedin].


## Acknowledgments

[Microverse][mcvs]

I have no business rights about the characters used in this API. This is only for learning purposes.



<!-- Links -->
[assignment]: https://www.notion.so/Final-Capstone-Project-Book-an-Appointment-41ded2ee99ff4fe4becf91acb332ca26
[live-version]: https://gym-trainer-app.netlify.app/
[front-end]: https://github.com/WCanirinka/gym-trainer-app
[mcvs]: https://www.microverse.org/
[wil-github]: https://github.com/WCanirinka
[wil-twitter]: https://twitter.com/WCanirinka
[wil-linkedin]: https://www.linkedin.com/in/wilfried-canirinka/
