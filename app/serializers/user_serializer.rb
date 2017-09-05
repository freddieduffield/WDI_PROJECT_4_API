class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :buildings
  has_many :materials
  has_many :favourites
end
