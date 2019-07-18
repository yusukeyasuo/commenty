class HomeController < ApplicationController
  def index
    pp params
    @products = if params[:keyword].present?
                  Product.search(params[:keyword]).page(params[:page]).per(9)
                else
                  Product.page(params[:page]).per(9)
                end
  end
  
  def show
    @product  = Product.find(params[:id])
    @product_reviews = @product.product_reviews
  end  


end
