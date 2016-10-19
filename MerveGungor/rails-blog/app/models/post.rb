# app/models/post.rb
class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :content, presence: true
  validates :title, presence: true, uniqueness: true

end
