class HomeController < ApplicationController
  def index
    @products = if params[:keyword].present?
                  Product.search(params[:keyword]).page(params[:page]).per(9)
                else
                  Product.page(params[:page]).per(2)
                end
  end
  
  def show
    @product  = Product.find(params[:id])
    @product_reviews = @product.product_reviews
    @likes = Like.where(user_id: current_user.id)
  end  
  
  

end
