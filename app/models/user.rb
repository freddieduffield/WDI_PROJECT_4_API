class User < ApplicationRecord
  has_many :created_buildings, foreign_key: :creator_id, class_name: "Building"
  has_many :materials
  has_many :favourites
  has_many :buildings, through: :favourites
  has_secure_password
end
