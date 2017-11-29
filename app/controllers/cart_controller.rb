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

  def checkout
    @categories_all = Category.all
      @products_all = Product.all
    @mycart = session[:zz]
    @pass_sub = params[:sub]

    if(user_signed_in?)
      @curr_user = User.where('name LIKE ?', current_user.name)

     @curr_user.each do |user|
       @ppp = user.province_id
     end

     @curr_pro = Province.where('id LIKE ?', @ppp)

     @curr_pro.each do |province|
       @ggst = province.gst
       @ppst = province.pst
     end

     @you_ggst = @pass_sub.to_f * @ggst.to_f
     @you_ggst.to_f

     @you_ppst = @pass_sub.to_f * @ppst.to_f
     @you_ppst.to_f

     @grandtot = @you_ggst + @you_ppst + @pass_sub.to_f
     @grandtot.to_f



    else
      redirect_to user_session_path
    end
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
