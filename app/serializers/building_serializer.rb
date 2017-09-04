class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :lat_lng, :description, :image
  has_one :user
  has_one :period
  has_many :favourites
end
