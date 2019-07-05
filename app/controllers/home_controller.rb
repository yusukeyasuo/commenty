class HomeController < ApplicationController
  def index
    @products = Product.all
    pp @products
  end
  
  def show
    @products = Product.all
    pp @products
    @product_reviews = ProductReviews.all
    pp @product_reviews
  end  
  
  def about
  end
  
  
end
