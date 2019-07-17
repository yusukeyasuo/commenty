class Product < ApplicationRecord
  has_many :product_images
  has_many :product_reviews
  has_many :likes ,dependent: :destroy
  
  def self.search(keyword)
      Product.where('name LIKE ?', "%#{keyword}%")
  end  
  
  def like
    @like = Like.new(user_id: user.id , product_id: params[:product_id])
    @like.save
  end
  
  def unlike
    @like = Like.find(user_id: user.id , product_id: params[:product_id])
    @like.destroy
  end  

  
end
