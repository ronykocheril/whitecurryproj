class CartController < ApplicationController



  def this_cart
    @categories_all = Category.all
    @products_all = Product.all

    id = params[:id]
    cart = session[:cart] ||= {}
    cart[:id] = (cart[:id] || 0) + 1

    redirect_to :action => :show

    # current_cart.add_item(params[:id], params[:quantity])
    # redirect_to cart_path(current_cart.id)
  end

  def show
    @categories_all = Category.all
    @products_all = Product.all
    @cart = session[:cart] || {}


  end

end
