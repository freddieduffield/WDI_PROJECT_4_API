class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :image
  has_one :user
  has_one :building
end
