class Cart < ApplicationRecord
  has_many :orders, :quantity, :price
end
