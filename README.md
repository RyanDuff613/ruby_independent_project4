# Mario's Specialty Food Products

#### Epicodus: Ruby: Week Four, Independent Project


#### Ryan Duff 

## Description
This project is a browser based application that allows users to view food products available through Mario's Specialty Foods. Users enter Mario's landing page and are shown the three most recently added products and the product with the most reviews, along with a link to a list of all available products. Admins are able to add, delete and edit the products. Visitors are able to view product details and add reviews to products but are prevented from editing the inventory.


## Setup/Installation Requirements
Users will need to install Ruby, Rails, psql and Postgres.
[Click here](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing Ruby.
[Click here](https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/) for instructions on installing psql and Postgres.
After installing the above software, users will need to clone this project from my [github repository](https://github.com/RyanDuff613/ruby_independent_project4.git). Once cloned, use the command line to navigate to the project folder and install all necessary Ruby Gems with: 
* _$ bundle install_
In the command line, type the following commands which will create the necessary database and launch a local server sso that you can access the application in a browser window.
* _$ rake db:create 
* _$ rake db:migrate
* _$ rake db:test:prepare
* _$ rails s
Now open a web browser and enter localhost:3000 in the address bar to view the project.


## Specifications

| Behavior       | Input         | Output  |
| :--- |:---| :---|
|Application will display a landing page with a list of the three most recently added products, a list of products sourced from Mexico and a link to the full list of available products.|Launch Server > navigate to localhost:3000|Display landing page|
|Application will allow users to click on a link and be taken to a list of available products| *click on "See all available products" | Browser displays a list of all products.|
|Application will allow user to add a product. |*click on "Add Product" |Browser displays page allowing user to add product.|
|Application will allow user to see details for individual products.|*click on "Product A" | Browser displays product page.|
|Application will allow user to edit products. |*click on "Edit"| Browser displays form for editing a products details|
|Application will allow user to delete a product|*click on "Delete" | Delete from database, return to product list|
|Application will allow user to add a  review to a product |*click on "Add Review" |Browser displays page allowing user to add review.|
|Application will allow user to edit reviews. |*click on "Edit Review"| Browser displays form for editing a review|
|Application will allow user to delete a review |*click on "Delete" | Delete from database, return to product page|
## User Stories Employed to Determine Behavior Driven Development Strategy

* As an admin I want to see a list of all available items.
* As an admin, I should be able to log in and log out of the application.
* As an admin, I should be able to add, update and delete products.
* As an admin, I should be able to add reviews.
* As an admin, I want to ensure that other users don't have access to CRUD functionality.
* As a user, I want to be able to create an account and add a review to a product.

## Technologies Used
* _Ruby_
* _Rails_
* _ActiveRecord_
* _Faker_
* _Rspec_
* _Pry_
* _Capybara_
* _Postgres_
* _Markdown_
* _git & gitHub_

## Known Bugs

If user enters a product cost with a "0" in the hundrenths position, the "0" is dropped from the cost. 
Ex. User Entered Cost:$2.30, Cost in Database: $2.3

Applicaation does not test for vilidity of user inputted email addresses and does not restrict for password strength.

Application limits certain actions to "Admins" but currently allows any user to create an Admin account.

### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
