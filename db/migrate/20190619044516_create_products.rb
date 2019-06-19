class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.integer :price
      t.float :star_count
      t.text :url

      t.timestamps
    end
  end
end
