class LikeController < ApplicationController

  def create
    @like = if user_signed_in?
              Like.new(user_id: current_user.id , product_id: params[:product_id])
            else  
            end
    @like.save #ここnilの場合は弾くとかの処理加える？saveもエラー出ちゃってるね
    flash[:notice] = "Like it!"
    redirect_to("/home/#{params[:product_id]}/show")
  end
  
  def destroy
    @like = if user_signed_in?
              Like.find(user_id: current_user.id , product_id: params[:product_id])
            else
            end  
    @like.destroy
    flash[:notice] = "Don't like..."
    redirect_to("/home/#{params[:product_id]}/show")
  end  
  
  def index
    @likes = Like.where(user_id: current_user.id)
    @products = Product.where(id: @likes.pluck(:product_id) ).page(params[:page]).per(9)
    
  end
  
  
  
end  