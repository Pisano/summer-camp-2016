class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      # t.boolean :published, null: false, default: false

      t.timestamps null: false
    end
  end
end
