class ShoppingCartsController < ApplicationController

  def index
  end

  def add_product

    session[:shopping_cart] ||= []

    begin
      product = Product.find(shopping_cart_params[:product_id])
    rescue
      redirect_back fallback_location: root_path, flash: { error: "Invalid product!" } and return
    end

    shopping_cart_params[:amount].to_i.times {
      session[:shopping_cart] << shopping_cart_params[:product_id]
    }

    redirect_back fallback_location: root_path, flash: { notice: "Product added to shopping cart!" } and return

    #render plain: "success! " + session[:shopping_cart].inspect
  end

  def destroy
    session[:shopping_cart].delete(shopping_cart_params[:product_id])
    redirect_to "http://localhost:3000/shopping_cart"
  end

  def checkout

    if session[:shopping_cart].nil?
      @cart = []
    else
      @cart = Hash[*session[:shopping_cart].group_by{ |v| v.to_i }.flat_map{ |k, v| [k, v.size] }]
      session[:shopping_cart] = []
    end
    
  end

  private
  def shopping_cart_params
    params.permit(:utf8, :_method, :authenticity_token, :commit, :id, :product_id, :amount)
  end


end
