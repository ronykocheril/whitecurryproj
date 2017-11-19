class ProductsController < ApplicationController
  def index
    @products_all = Product.all.page(params[:page]).per(2)
    @categories_all = Category.all
  end
  def category
    @products_all = Product.all.page(params[:page]).per(2)
    @categories_all = Category.all
    @item = params[:id]
  end

  def search
    @products_all = Product.all.page(params[:page]).per(2)
    @categories_all = Category.all

    keywords = "%" + params[:search_keywords] + "%";
    cat = "%" + params[:categories] + "%";
    if params[:categories] == ''
      @found_products = Product.where("productName LIKE ? OR productDescription LIKE ?", keywords, keywords)
    else
      @found_products = Product.where("productName LIKE ? OR productDescription LIKE ?", keywords, keywords).joins(:category).where("categories.id LIKE ?", cat)
    end

  end

  def new
    @products_all = Product.all
    @categories_all = Category.all
    today = DateTime.now
    sale_item_date = (today - 2).to_date
    @new_prods = Product.where("created_at > '#{sale_item_date}'")
  end
end
