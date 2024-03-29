class HomeController < ApplicationController
  def index
    @products = if params[:keyword].present?
                  Product.search(params[:keyword]).page(params[:page]).per(6)
                else
                  Product.all.page(params[:page]).per(6)
                end
  end
  
  def show
    @product  = Product.find(params[:id])
    @product_reviews = @product.product_reviews
    @likes = if user_signed_in?
              Like.where(user_id: current_user.id , product_id: params[:id])
             end

    
  end
  

end
