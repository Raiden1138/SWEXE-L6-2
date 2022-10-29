class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @products = Product.new
  end
  def create
    products = Product.new(name: params[:product][:name], 
    price: params[:product][:price])
    products.save
    redirect_to '/'
  end
  def destroy
    products = Product.find(params[:id])
    products.destroy
    redirect_to '/'
  end
end
