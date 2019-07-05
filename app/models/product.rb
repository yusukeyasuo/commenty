class Product < ApplicationRecord
  has_many :product_images
  has_many :product_reviews
end
