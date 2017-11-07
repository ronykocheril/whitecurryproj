class ChangeColNamePCatName < ActiveRecord::Migration[5.1]
  def change
    remove_column :product_categories, :pname
  end
end
