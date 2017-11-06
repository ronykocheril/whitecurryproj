ActiveAdmin.register Order do

  permit_params :orderAmount, :orderShipName, :orderShipAddress1, :orderShipAddress2, :orderCity, :orderProvince, :orderPostal, :orderCountry, :orderPhone, :orderEmail, :orderDate, :orderTax, :user_id


end
