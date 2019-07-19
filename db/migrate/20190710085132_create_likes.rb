class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
      
      t.index [:user_id, :product_id], unique: true
    end
  end
end
