class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates_length_of :content_body, maximum: 250
  validates_length_of :content_body, minimum: 50
  validates :rating, numericality: {only_integer: true}
  validates :rating, numericality: {greater_than: 0}
  validates :rating, numericality: {less_than: 6}
  

  before_save(:titleize_author_name)

  private
    def titleize_author_name
      self.author = self.author.titleize
    end
end