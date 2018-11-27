class HomeController < ApplicationController
  
  def index
    @cats = Item.all

    # Adds cart when user logs-in
    if signed_in? && !current_user.cart
      @cart = Cart.new(name: "My Cart")
      current_user.cart = @cart
      @cart.save
    end

  end

  def show
    @cat_id = Item.find(params[:id])
  end

end
