class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true
  validates :cost, numericality: true
  scope :newest_3, -> {order(created_at: :desc).limit(3)}
  scope :from_mexico, -> {where(country_of_origin: "Mexico")}
  scope :most_reviewed, -> {( 
    select ("products.id, products.name, count(reviews.id) as total_reviews")
    .joins(:reviews)
    .group("products.id")
    .order("total_reviews DESC")
    .limit(1)
  )}

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
en