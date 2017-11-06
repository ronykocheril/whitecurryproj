class AddProductsCategoryToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :productcategory, foreign_key: true
  end
end
