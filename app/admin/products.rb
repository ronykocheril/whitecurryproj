ActiveAdmin.register Product do
  permit_params :productSKU, :productName, :productPrice, :productDescription, :productImage, :productStockQuantity, :category_id
end
