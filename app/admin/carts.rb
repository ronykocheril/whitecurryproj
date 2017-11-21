ActiveAdmin.register Cart do
permit_params :name, :quantity, :price, :product_id
end
