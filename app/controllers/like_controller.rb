class LikeController < ApplicationController
  #quita基準で描いてみた
  def create
    @product = Product.find(params[:user_id , :product_id])
    @product.like　
  end
  #ここのlikemethod良くわからん
  def destroy
    @product = Product.find(params[:user_id , :product_id ])
    @product.unlike
  end  
    



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
  
  def favorite
    @like = Like.where(user_id:@current_user.id)
    @product = Product.find(product_id: @like.product_id)
  end  
  
  
  
end  