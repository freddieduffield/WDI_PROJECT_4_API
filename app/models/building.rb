class Building < ApplicationRecord
  belongs_to :user
  belongs_to :period
  has_many :favourites
end
