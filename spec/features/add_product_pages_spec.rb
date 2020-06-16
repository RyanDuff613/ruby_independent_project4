require 'rails_helper'

# describe "signup process" do
#   it "allows user to create user account" do
#     visit products_path 
#     click_link "Sign up"
#     fill_in "Email", :with => "ryan@fake.com"
#     fill_in "Password", :with => "password"
#     fill_in "Password confirmation", :with => "password"
#     click_button "Register as User"
#     expect(page).to have_content "You are now signed in"
#   end
# end

# describe "sign out process" do
#   it "allows user to sign out as user" do
#     visit products_path 
#     click_link "Sign up"
#     fill_in "Email", :with => "ryan@fake.com"
#     fill_in "Password", :with => "password"
#     fill_in "Password confirmation", :with => "password"
#     click_button "Register as User"
#     click_link "Sign out"
#     expect(page).to have_content "You have signed out"
#   end
# end

# describe "sign in process" do
#   it "allows user to sign in as user" do
#     visit products_path 
#     click_link "Sign up"
#     fill_in "Email", :with => "ryan@fake.com"
#     fill_in "Password", :with => "password"
#     fill_in "Password confirmation", :with => "password"
#     click_button "Register as User"
#     click_link "Sign out"
#     click_link "Sign in"
#     fill_in "Email", :with => "ryan@fake.com"
#     fill_in "Password", :with => "password"
#     click_button "Sign in"
#     expect(page).to have_content "You've signed in."
#   end
# end

# describe "sign in process" do
#   it "rejects user if attempting to sign in without account" do
#     visit products_path 
#     click_link "Sign in"
#     fill_in "Email", :with => "ryan@fake.com"
#     fill_in "Password", :with => "password"
#     click_button "Sign in as User"
#     expect(page).to have_content "There was a problem signing in."
#   end
# end

# describe "the add product process" do
#   it"adds a new product" do
#     visit products_path 
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path 
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.30
#     click_on "Create Product"
#     expect(page).to have_content 'Product Successfully Added to Inventory'
#   end

  # it"rejects non-admin attempting to add product" do
  #   visit products_path 
  #   click_link 'Add new product to inventory'
  #   expect(page).to have_content 'Restricted. Admin only'
  # end

  # it "gives error when no name is entered" do
  #   visit products_path 
  #   click_link "Sign up"
  #   fill_in "Email", :with => "meme.com"
  #   fill_in "Password", :with => "123abc"
  #   fill_in "Password confirmation", :with => "123abc"
  #   click_button "Register as User"
  #   visit new_product_path
  #   click_on 'Create Product'
  #   fill_in "Country of origin", :with => "italy"
  #   fill_in "Cost", :with => 2.30
  #   click_on "Create Product"
  #   expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  # end

  # it "gives error when no country of origin is entered" do
  #   visit products_path 
  #   click_link "Sign up"
  #   fill_in "Email", :with => "meme.com"
  #   fill_in "Password", :with => "123abc"
  #   fill_in "Password confirmation", :with => "123abc"
  #   click_button "Register as User"
  #   visit new_product_path
  #   click_on 'Create Product'
  #   fill_in "Name", :with => "onions"
  #   fill_in "Cost", :with => 2.30
  #   click_on "Create Product"
  #   expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  # end

  # it "gives error when no price is entered" do
  #   visit products_path 
  #   click_link "Sign up"
  #   fill_in "Email", :with => "meme.com"
  #   fill_in "Password", :with => "123abc"
  #   fill_in "Password confirmation", :with => "123abc"
  #   click_button "Register as User"
  #   visit new_product_path
  #   click_on 'Create Product'
  #   fill_in "Name", :with => "onions"
  #   fill_in "Country of origin", :with => "italy"
  #   click_on "Create Product"
  #   expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  # end
# end

# describe "update product process" do 
#   it "updates a product price" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     click_link "See all Products"
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Edit this Product"
#     fill_in "Cost", :with => 5.11
#     click_on "Update Product"
#     expect(page).to have_content "Kale - $5.11"
#   end
# end

# describe "delete product process" do
#   it "deletes a product from inventory"do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_on "Delete From Inventory"
#     expect(page).not_to have_content "Kale - $2.31"
#   end
# end

# describe "add review process" do
#   it "adds a new review" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4 
#     fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     expect(page).to have_content "Thanks for adding your review"
#     expect(page).to have_content "Tammy"
#   end

#   it "gives error when no name is entered" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Rating", :with => 4 
#     fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     expect(page).to have_content "Please fill in all form data correctly to add review"
#   end

#   it "gives error when no rating is entered" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     expect(page).to have_content "Please fill in all form data correctly to add review"
#   end

#   it "gives error when no comments are entered" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4 
#     click_on "Create Review"
#     expect(page).to have_content "Please fill in all form data correctly to add review"
#   end

# end


# describe "delete review process" do
#   it "deletes a review" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4 
#     fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     click_link "Tammy"
#     expect(page).to have_content "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#   end

#   it "rejects non-admin attempt to delete review" do
#     visit products_path
#     click_link "Sign up"
#     fill_in "Email", :with => "meme.com"
#     fill_in "Password", :with => "123abc"
#     fill_in "Password confirmation", :with => "123abc"
#     click_button "Register as User"
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     click_link "Sign out"
#     visit products_path
#     click_link "Kale - $2.31"
#     click_link "Add Review for this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4 
#     fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     click_link "Tammy"
#     click_button "Delete this review"
#     expect(page).to have_content "Restricted. Admin only"
#   end


# end