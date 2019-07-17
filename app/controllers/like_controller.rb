class LikeController < ApplicationController
  #quita基準で描いてみた
  def create
    @product = Product.find(params[:user_id , :product_id])
    @product.like
  end
  
  def destroy
    @product = Product.find(params[:user_id , :product_id ])
    @product.unlike
  end  
    



  #progate基準で描いてみた
  def create
    @like = Like.new(user_id: @current_user.id , product_id: params[:product_id])
    @like.save
    redirect_to("/home/#{params[:product_id]}/show")
  
  end
  
  def destroy
    @like = Like.find(user_id: @current_user.id , product_id: params[:product_id])
    @like.destroy
    redirect_to("/home/#{params[:product_id]}/show")
  end  
  
  
  
end  