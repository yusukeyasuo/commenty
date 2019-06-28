class HomeController < ApplicationController
  def index
    @products = Product.all
    pp @products
  end
  
  def show
  end  
  
  
end
