class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  has_many :tags
end
