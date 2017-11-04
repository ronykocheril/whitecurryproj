class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :orderAmount
      t.string :orderShipName
      t.string :orderShipAddress1
      t.string :orderShipAddress2
      t.string :orderCity
      t.string :orderProvince
      t.string :orderPostal
      t.string :orderCountry
      t.string :orderPhone
      t.string :orderEmail
      t.timestamp :orderDate
      t.decimal :orderTax

      t.timestamps
    end
  end
end
