class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.string :orderName
      t.string :orderDescription

      t.timestamps
    end
  end
end
