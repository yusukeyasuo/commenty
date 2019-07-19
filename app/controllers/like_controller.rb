class LikeController < ApplicationController

    



  #progate基準で描いてみた
  def create
    @like = Like.new(user_id: @current_user.id , product_id: params[:product_id])
    @like.save
    flash[:notice] = "I like it!"
    redirect_to("/home/#{params[:product_id]}/show")
  
  end
  
  def destroy
    @like = Like.find(user_id: @current_user.id , product_id: params[:product_id])
    @like.destroy
    flash[:notice] = "I Don't like..."
    redirect_to("/home/#{params[:product_id]}/show")
  end  
  
  def index
    likes = Like.where(user_id: current_user.id)
    @products = Product.where(id: likes.pluck(:product_id))
  end  
  
  
  
end  