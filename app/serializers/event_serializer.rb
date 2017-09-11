class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  has_one :gallery
  has_many :tags

  # TODO https://github.com/rails-api/active_model_serializers/blob/d39dd04c11270ade7acd78bdcc1715c281ffd7fc/docs/howto/add_relationship_links.md#links-as-an-attribute-of-a-resource
  # link(:self) { api_v1_event_url(object.id) }
end
