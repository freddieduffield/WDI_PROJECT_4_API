class Building < ApplicationRecord
  belongs_to :user
  belongs_to :period, optional: true
  has_many :favourites
  has_many :materials
end
