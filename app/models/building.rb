class Building < ApplicationRecord
  belongs_to :creator, foreign_key: :creator_id, class_name: "User"
  belongs_to :period, optional: true
  has_many :favourites
  has_many :users, through: :favourites
  has_many :materials
end
