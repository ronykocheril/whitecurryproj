class User < ApplicationRecord
  has_many :orders
  validates :userFirstName, :userEmail, :userPassword, :userAddress1, :userPostal, presence: true
end
