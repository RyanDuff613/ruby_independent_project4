# Mario's Specialty Food Products

#### Epicodus: Ruby: Week Four, Independent Project


#### Ryan Duff 

## Description
This project is a browser based application that allows users to view food products available through Mario's Specialty Foods. Users enter Mario's landing page and are shown the three most recently added products and the product with the most reviews, along with a link to a list of all available products. Users are able to add, delete and edit the products list as well as the review list.


## Setup/Installation Requirements
Users will need to have Ruby and Rails installed on their local machines. [See Here](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm) for more info on installing these.
Users will need to clone the project from my [github repository](https://github.com/RyanDuff613/ruby_independent_project4.git). Once cloned, open a Terminal window and enter "$ rails server" on the command line. This lauches a server at localhost:3000. Open a browser window and enter localhost:3000 in the address bar to view the landing page.


## Specifications

| Behavior       | Input         | Output  |
| :--- |:---| :---|
|Application will display a landing page with a list of the three most recently added products, the most reviewed product and links to other areas of the site for adding, deleting and editing both products and reviews.|Launch Server > navigate to localhost:3000|Display landing page|
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
* As an admin I want to be able to click on an item and see it's details.
* As an admin I want to be able to edit a product's details.
* As an admin I want to be able to add and delete products.
* As a consumer I want to see all product's available and have access to user reviews.
* As a consumer I want to add my own reviews for products I've purchased.

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



### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
