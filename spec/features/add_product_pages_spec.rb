require 'rails_helper'

describe "signup process" do
  it "allows user to create user account" do
    visit products_path 
    click_link "Sign up"
    fill_in "Email", :with => "ryan@fake.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Register as User"
    expect(page).to have_content "You are now signed in"
  end
end

describe "sign out process" do
  it "allows user to sign out as user" do
    visit products_path 
    click_link "Sign up"
    fill_in "Email", :with => "ryan@fake.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Register as User"
    click_link "Sign-Out"
    expect(page).to have_content "You've signed out"
  end
end

describe "sign in process" do
  it "allows user to sign in as user" do
    visit products_path 
    click_link "Sign up"
    fill_in "Email", :with => "ryan@fake.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Register as User"
    click_link "Sign-Out"
    click_link "Sign in"
    fill_in "Email", :with => "ryan@fake.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    expect(page).to have_content "You've signed in."
  end
end

describe "sign in process" do
  it "rejects user if attempting to sign in without account" do
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "ryan@fake.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    expect(page).to have_content "There was a problem signing in."
  end
end

describe "the add product process" do
  it"adds a new product" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path 
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "kale"
    fill_in "Country of origin", :with => "italy"
    fill_in "Cost", :with => 2.30
    click_on "Create Product"
    expect(page).to have_content 'Product Successfully Added to Inventory'
  end

  it"rejects non-admin attempting to add product" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => false)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path 
    click_link 'Add new product to inventory'
    expect(page).to have_content 'Restricted. Admin only'
  end

  it "gives error when no name is entered" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Country of origin", :with => "italy"
    fill_in "Cost", :with => 2.30
    click_on "Create Product"
    expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  end


  it "gives error when no name is entered" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "onions"
    fill_in "Cost", :with => 2.30
    click_on "Create Product"
    expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  end

  it "gives error when no name is entered" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "onions"
    fill_in "Country of origin", :with => "italy"
    click_on "Create Product"
    expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  end
end

describe "update product process" do 
  it "updates a product price" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "kale"
    fill_in "Country of origin", :with => "italy"
    fill_in "Cost", :with => 2.31
    click_on "Create Product"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Edit this Product"
    fill_in "Cost", :with => 5.11
    click_on "Update Product"
    expect(page).to have_content "Kale - $5.11"
  end
end

describe "delete product process" do
  it "deletes a product from inventory"do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    visit products_path 
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "kale"
    fill_in "Country of origin", :with => "italy"
    fill_in "Cost", :with => 2.31
    click_on "Create Product"
    visit products_path
    click_link "Kale - $2.31"
    click_on "Delete From Inventory"
    expect(page).not_to have_content "Kale - $2.31"
  end
end

describe "add review process" do
  it "adds a new review" do
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign up"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => "123abc"
    click_button "Register as User"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Author", :with => "Tammy"
    fill_in "Rating", :with => 4 
    fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
    click_on "Create Review"
    expect(page).to have_content "Thanks for adding your review"
    expect(page).to have_content "Tammy"
  end

  it "gives error when no name is entered" do
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign up"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => "123abc"
    click_button "Register as User"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Rating", :with => 4 
    fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
    click_on "Create Review"
    expect(page).to have_content "Author can't be blank"
  end

  it "gives error when no rating is entered" do
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign up"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => "123abc"
    click_button "Register as User"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Author", :with => "Tammy"
    fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
    click_on "Create Review"
    expect(page).to have_content "Rating can't be blank"
  end

  it "gives error when no comments are entered" do
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign up"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "123abc"
    fill_in "Password confirmation", :with => "123abc"
    click_button "Register as User"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Author", :with => "Tammy"
    fill_in "Rating", :with => "4"
    click_on "Create Review"
    expect(page).to have_content "Content body can't be blank"
  end
end


describe "delete review process" do
  it "deletes a review" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => true)
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Author", :with => "Tammy"
    fill_in "Rating", :with => 4 
    fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
    click_button "Create Review"
    click_link "Tammy"
    click_button "Delete this review"
    expect(page).not_to have_content "Tammy"
  end

  it "rejects non-admin attempt to delete review" do
    User.create!(:email => "meme.com", :password => "password", :password_confirmation => "password", :admin => false)
    Product.create!(:name => 'kale', :country_of_origin => 'italy', :cost => 2.31)
    visit products_path
    click_link "Sign in"
    fill_in "Email", :with => "meme.com"
    fill_in "Password", :with => "password"
    click_button "Sign in"
    visit products_path
    click_link "Kale - $2.31"
    click_link "Add Review for this Product"
    fill_in "Author", :with => "Tammy"
    fill_in "Rating", :with => 4 
    fill_in "Comments", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
    click_button "Create Review"
    click_link "Tammy"
    click_button "Delete this review"
    expect(page).to have_content "Restricted. Admin only"
  end

end