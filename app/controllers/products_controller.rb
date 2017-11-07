class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  # def shirts
  #   # @products = Product.where()
  # end
end
