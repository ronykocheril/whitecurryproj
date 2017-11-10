class Order < ApplicationRecord
  belongs_to :user
  validates :name, :orderAmount, :orderShipAddress1, :orderPostal, presence: true
end
