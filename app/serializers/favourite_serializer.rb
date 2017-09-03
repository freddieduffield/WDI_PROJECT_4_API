class FavouriteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :building_id
  has_one :user_id
end
