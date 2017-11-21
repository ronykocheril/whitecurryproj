ActiveAdmin.register Product do
  permit_params :productSKU, :name, :productPrice, :productDescription, :productImage, :productStockQuantity, :category_id, :sale_price
end
