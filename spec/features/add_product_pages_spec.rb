require 'rails_helper'

describe "the add product process" do
  it"adds a new product" do
    visit products_path
    click_link 'Add new product to inventory'
    fill_in "Name", :with => "kale"
    fill_in "Country of origin", :with => "italy"
    fill_in "Cost", :with => 2.30
    click_on "Create Product"
    expect(page).to have_content 'Product Successfully Added to Inventory'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Product Not Added, All data must be entered in the form correctly."
  end
end

describe "update product process" do 
  it "updates a product price" do
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

# describe "add review process" do
#   it "adds a new review" do
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.31
#     click_on "Create Product"
#     click_on "Kale - $2.31"
#     click_on "Review this Product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4 
#     fill_in "content_body", :with => "Impedit sed ea incidunt tenetur placeat est labore quia ut e."
#     click_on "Create Review"
#     expect(page).to have_content "Thanks for adding your review"
#     expect(page).to have_content "Tammy"
#   end
# end