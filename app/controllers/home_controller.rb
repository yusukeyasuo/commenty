class HomeController < ApplicationController
  def index
    @products = Product.all
    pp @products
  end
  
  def show
    @product  = Product.find(params[:id])
    @product_reviews = @product.product_reviews
  end  
  
  def about
  end
  
  
end
