class ProductReview < ApplicationRecord
  has_many :product
  has_many :product_image
end
