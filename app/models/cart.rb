class Cart < ApplicationRecord
has_many :products

  def add_item(product_id,quantity)
    product = Product.where('id = ?', product_id).first
    cart_item = Cart.where('product_id = ?', product_id).first
    full_price = quantity * product.productPrice

    if cart_item
      cart_item.quantity + 1
    else
      object = Cart.new(:name => product.name, :quantity => quantity, :price => 10.0, :product_id => product.id)
      object.save
    end
    save
  end

end
