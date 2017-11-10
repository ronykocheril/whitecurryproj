class OrderDetail < ApplicationRecord

  validates :orderName, :orderDescription, presence: true
end
