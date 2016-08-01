class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :post, serializer: SimplePostSerializer
end
