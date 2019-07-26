class LikeController < ApplicationControlle

  def create
    @like = Like.new(user_id: current_user.id , product_id: params[:product_id])
    @like.save
    flash[:notice] = "Like it!"
    redirect_to("/home/#{params[:product_id]}/show")
  
  end
  
  def destroy
    @like = Like.find(user_id: current_user.id , product_id: params[:product_id])
    @like.destroy
    flash[:notice] = "Don't like..."
    redirect_to("/home/#{params[:product_id]}/show")
  end  
  
  def index
    @likes = Like.where(user_id: current_user.id)
    @products = Product.where(id: @likes.pluck(:product_id) )
  end  
  
  
  
end  