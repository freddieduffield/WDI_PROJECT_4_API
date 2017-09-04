class Favourite < ApplicationRecord
  belongs_to :building_ids
  belongs_to :user_ids
end
