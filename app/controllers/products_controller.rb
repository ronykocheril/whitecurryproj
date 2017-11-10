class ProductsController < ApplicationController
  def index
    @products_all = Product.all
    @categories_all = Category.all
  end
  def category
    @products_all = Product.all
    @categories_all = Category.all
    @item = params[:id]
  end

  def search
    @products_all = Product.all
    @categories_all = Category.all

    keywords = "%" + params[:search_keywords] + "%";
    @found_products = Product.where("productName LIKE ? OR productDescription LIKE ?", keywords, keywords)
  end
end
