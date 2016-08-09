class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :current_time, :review

  has_many :comments

  def current_time
    Time.now

  end

  def review
    "This post has #{instance_options[:stars]} stars."
  end

end
