class LikeController < ApplicationController

  def create 
   @like = Like.new(user_id: current_user.id , product_id: params[:product_id])
   @like.save
   flash[:create] = "Like it!"
   @product = Product.find(params[:product_id])
    respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
    end
  end
  
  def destroy
   @like = Like.find_by(user_id: current_user.id , product_id: params[:product_id])
   @like.destroy
   flash[:destroy] = "Don't like it..."
   @product = Product.find(params[:product_id])
    respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
    end
  end
  

  def index
    @likes = Like.where(user_id: current_user.id)
    @products = Product.where(id: @likes.pluck(:product_id) ).page(params[:page]).per(2)
  end  
  
  

end  