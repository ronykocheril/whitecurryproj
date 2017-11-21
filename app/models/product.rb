class Product < ApplicationRecord
  belongs_to :category

  validates :productName, presence: true

end
