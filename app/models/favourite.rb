class Favourite < ApplicationRecord
  belongs_to :building_id
  belongs_to :user_id
end
