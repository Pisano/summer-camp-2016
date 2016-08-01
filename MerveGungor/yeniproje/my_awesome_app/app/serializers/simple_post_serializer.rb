# app/serializers/simple_post_serializer.rb
class SimplePostSerializer < ActiveModel::Serializer
  attributes :id, :title
end
