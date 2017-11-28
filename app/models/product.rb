class Product < ApplicationRecord
  mount_uploader :productImage, ImagerUploader
  belongs_to :category


  validates :name, presence: true

end
