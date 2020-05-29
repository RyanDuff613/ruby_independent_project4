require 'rails_helper'

describe Product do
  it {should have_many(:reviews)}
  it {should validate_presence_of :name}
  it {should validate_presence_of :country_of_origin}
  it {should validate_presence_of :cost}
  it { should validate_numericality_of(:cost)}
end

describe Product do
  it("titleizes product name when user enters first letter as a lowercase") do
    product = Product.create({name: "tomatoes", country_of_origin:"us", cost: "5.34"})
    expect(product.name()).to(eq("Tomatoes"))
  end
end