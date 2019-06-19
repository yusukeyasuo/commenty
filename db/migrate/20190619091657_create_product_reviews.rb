class CreateProductReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :product_reviews do |t|
      t.integer :product_id
      t.text :review
      t.float :star_count
      t.integer :score

      t.timestamps
    end
  end
end
