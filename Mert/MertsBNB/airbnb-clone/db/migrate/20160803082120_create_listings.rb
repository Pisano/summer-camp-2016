class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :image_url
      t.integer :user_id
      t.string :title
      t.integer :sharing_type
      t.integer :guest_capacity
      t.integer :bed_capacity
      t.float :daily_price

      t.timestamps
    end
  end
end
