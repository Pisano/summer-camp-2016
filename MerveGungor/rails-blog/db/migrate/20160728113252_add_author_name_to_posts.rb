# db/migrate/20160615085144_add_author_name_to_posts.rb
class AddAuthorNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_name, :string
  end
end
