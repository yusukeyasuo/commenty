class Product < ApplicationRecord
  has_many :product_images
  has_many :product_reviews
  
  def self.search(keyword)
      Product.where('name LIKE ?', "%#{keyword}%")
  end  
  
end
