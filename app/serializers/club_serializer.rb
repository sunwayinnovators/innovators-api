class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :gallery
end
