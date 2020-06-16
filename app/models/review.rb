class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :rating, numericality: {only_integer: true}
  validates :rating, numericality: {greater_than: 0}
  validates :rating, numericality: {less_than: 6}
  validates :content_body, presence: true
  validates_length_of :content_body, maximum: 250, minimum: 50
 
  before_save(:titleize_author_name)

  private
    def titleize_author_name
      self.author = self.author.titleize
    end
end