class CartController < ApplicationController

  before_action :init_sess

  def this_cart
    @categories_all = Category.all
    @products_all = Product.all

    id = params[:id].to_i
    q = params[:quantity].to_i

    if session[:zz].any? {|h| h['id'] == id}
      session[:zz].each do |val|
          if val['id']==id
            val['q'] = q
          end
       end
    else
      session[:zz] << {:id => id, :q => q}
    end
    redirect_to :action => :show
  end

  def init_sess
    session[:zz] ||= []
  end

  def show
    @categories_all = Category.all
    @products_all = Product.all

    @mycart = session[:zz]

  end

  def destroy
    @categories_all = Category.all
    @products_all = Product.all

    id_destroy = params[:id].to_i

    if session[:zz].any? {|h| h['id'] == id_destroy}
      session[:zz].each do |val|
          if val['id']==id_destroy
            session[:zz].delete(val)
          end
    end

    redirect_to :action => :show

  end

end

end
