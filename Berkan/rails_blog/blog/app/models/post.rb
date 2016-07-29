class Post < ActiveRecord::Base
  has_many :comments

  validates :title, :content, presence: true
  validates :title, uniqueness: true
end
