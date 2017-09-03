class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest

  has_many :buildings
  # has_many :additional_materials
  has_many :favourites
end
