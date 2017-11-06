class User < ApplicationRecord
  validates :userFirstName, :userEmail, :userPassword, :userAddress1, :userPostal, presence: true
end
