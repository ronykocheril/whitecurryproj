class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :productSKU
      t.string :productName
      t.decimal :productPrice
      t.string :productDescription
      t.string :productImage
      t.integer :productStockQuantity

      t.timestamps
    end
  end
end
