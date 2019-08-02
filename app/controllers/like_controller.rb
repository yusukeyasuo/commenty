class LikeController < ApplicationController


  def create
   unless user_signed_in?
     flash[:error] = "ログインしてください"
     render "/home/#{params[:product_id]}/show" and return
   end
   @like = Like.new(user_id: current_user.id , product_id: params[:product_id])
   @like.save
   flash[:create] = "Like it!"
   redirect_to("/home/#{params[:product_id]}/show")
  end
  
  
  def destroy
    @like = if user_signed_in?
              Like.find_by(user_id: current_user.id , product_id: params[:product_id])
            end
    @like.destroy
    flash[:destroy] = "Don't like..."
    redirect_to("/home/#{params[:product_id]}/show")
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