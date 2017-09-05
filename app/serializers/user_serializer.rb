class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :created_buildings
  has_many :materials
  has_many :favourites
  has_many :buildings, through: :favourites
end
