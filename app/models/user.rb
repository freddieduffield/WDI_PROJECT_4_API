class User < ApplicationRecord

  has_many :buildings
  # has_many :additional_materials
  has_many :favourites
  has_secure_password
end
