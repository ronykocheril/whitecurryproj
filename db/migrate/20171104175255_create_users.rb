class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :userFirstName
      t.string :userLastName
      t.string :userEmail
      t.string :userPassword
      t.string :userAddress1
      t.string :userAddress2
      t.string :userCity
      t.string :userProvince
      t.string :userPostal
      t.string :userCountry
      t.string :userPhone

      t.timestamps
    end
  end
end
