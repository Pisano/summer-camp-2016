class CommentSerializer < ActiveModel::Serializer
  attributes :id, content :post

  belongs_to :post


end
