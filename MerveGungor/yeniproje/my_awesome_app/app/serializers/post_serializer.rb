# app/serializers/post_serializer.rb
class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :author_name, :time_of_creation, :review

  has_many :comments

  def time_of_creation
    object.created_at.strftime("%e %B %Y at %Hh%M")
  end

  def review
    "#{instance_options[:stars]} stars"
  end
end
