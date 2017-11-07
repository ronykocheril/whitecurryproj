class FixColNamePro < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :products, :productcategory_id, :product_category_id
  end
end
