class ChargesController < ApplicationController
  def new
    @categories_all = Category.all
    @amount = 100
    @description = "Description of charge"
  end

  def create
    # Amount in cents
 @amount = 100

 @customer = Stripe::Customer.create(
   :email => params[:stripeEmail],
   :source  => params[:stripeToken]
 )

 @charge = Stripe::Charge.create(
   :customer    => customer.id,
   :amount      => @amount,
   :description => 'Rails Stripe customer',
   :currency    => 'usd'
 )

rescue Stripe::CardError => e
 flash[:error] = e.message
 redirect_to new_charge_path
  end
end
