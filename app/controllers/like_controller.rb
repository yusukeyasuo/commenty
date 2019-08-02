class LikeController < ApplicationController

  def create
    @like = if user_signed_in?
              Like.new(user_id: current_user.id , product_id: params[:product_id])
              @like.save
              flash[:create] = "Like it!"
              redirect_to("/home/#{params[:product_id]}/show")
            else   
            end
  end
  
  def destroy
    @like = if user_signed_in?
              Like.find(user_id: current_user.id , product_id: params[:product_id])
              @like.destroy
              flash[:destroy] = "Don't like..."
              redirect_to("/home/#{params[:product_id]}/show")
            else
            end  
  end  
  
  def index
    if user_signed_in?
      @likes = Like.where(user_id: current_user.id)
      @products = Product.where(id: @likes.pluck(:product_id) ).page(params[:page]).per(9)
    else
      flash[:not]= "Please Login or Signup."
    end  
  end
  
  
  
end  