class Building < ApplicationRecord
  belongs_to :user
  belongs_to :periods
  has_many :favourites
end
