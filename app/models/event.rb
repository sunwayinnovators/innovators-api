class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_one :gallery, as: :galleriable
  acts_as_taggable # Alias for acts_as_taggable_on :tags

  validates_presence_of :name, :content

  self.per_page = 8
end
