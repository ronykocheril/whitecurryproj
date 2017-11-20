class CartController < ApplicationController
  def this_cart
    @categories_all = Category.all
    @products_all = Product.all
  end

  def show
    @cart = current_cart
  end
end
