class PeriodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :buildings
end
