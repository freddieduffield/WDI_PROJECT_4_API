class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :lat, :long, :description, :image
  has_one :creator
  has_one :period
  has_many :favourites
  has_many :users, through: :favourites
  has_many :materials
end
