ActiveAdmin.register User do
  permit_params :name, :userLastName,  :userPassword, :userAddress1, :userAddress2, :userCity, :userPostal, :userCountry, :userPhone, :province_id, :email, :password
end
