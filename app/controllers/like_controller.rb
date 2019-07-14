class LikeController < ApplicationController
  
  def create
    @product = Product.find(params[:user_id , :product_id])
    @product.like
  end
  
  def destroy
    @product = Product.find(params[:user_id , :product_id ])
    @product.unlike
  end  
    
  
  
end  