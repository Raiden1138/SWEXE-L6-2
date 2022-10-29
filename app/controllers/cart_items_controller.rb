class CartItemsController < ApplicationController
  def new
    @cart_items = CartItem.new(product_id: params[:product_id])
  end
  def create
    @cart_items = CartItem.new(product_id: params[:product_id])
    cart_items = CartItem.new(qty: params[:cart_item][:qty])
    cart_items.save
    redirect_to carts_show_path
  end
  def destroy
    
  end
end
