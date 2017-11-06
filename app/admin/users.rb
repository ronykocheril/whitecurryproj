ActiveAdmin.register User do
  permit_params :userFirstName, :userLastName, :userEmail, :userPassword, :userAddress1, :userAddress2, :userCity, :userProvince, :userPostal, :userCountry, :userPhone
end
