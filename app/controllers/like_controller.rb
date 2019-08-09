class LikeController < ApplicationController

  def create 
   @like = Like.new(user_id: current_user.id , product_id: params[:product_id])
   @like.save
   flash[:create] = "Like it!"
   redirect_to("/home/#{params[:product_id]}/show")
  end
  
  def destroy
   @like = Like.find_by(user_id: current_user.id , product_id: params[:product_id])
   @like.destroy
   flash[:destroy] = "Don't like it..."
   redirect_to("/home/#{params[:product_id]}/show")
  end
  

  def index
    @likes = Like.where(user_id: current_user.id)
    @products = Product.where(id: @likes.pluck(:product_id) ).page(params[:page]).per(2)
  end  
  
  

end  