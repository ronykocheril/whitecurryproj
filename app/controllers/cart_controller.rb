class CartController < ApplicationController

  def this_cart
    @categories_all = Category.all
    @products_all = Product.all

    current_cart.add_item(params[:id], params[:quantity])
    # redirect_to cart_path(current_cart.id)
  end

  def show
    @categories_all = Category.all
    @products_all = Product.all
    @cart = Cart.all
  end

  def remove
  end
end
