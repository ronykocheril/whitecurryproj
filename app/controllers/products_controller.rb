class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def shirts 
  end
end
