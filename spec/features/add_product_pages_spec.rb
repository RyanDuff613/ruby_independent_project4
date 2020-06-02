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

# describe "add review process" do
#   it "adds a new review" do
#     visit products_path
#     click_link 'Add new product to inventory'
#     fill_in "Name", :with => "kale"
#     fill_in "Country of origin", :with => "italy"
#     fill_in "Cost", :with => 2.30
#     click_on "Create Product"
#     click_on "kale"
#     click_on "Review this product"
#     fill_in "Author", :with => "Tammy"
#     fill_in "Rating", :with => 4
#     fill_in "Comments", :with => "adsaf asdf asdf asdf asdf asdf asdf asdf"
#     click_on "Create Review"
#     expect(page).to have_content "Thanks for adding your review"
#     expect(page).to have_content "Tammy"
#   end
# end