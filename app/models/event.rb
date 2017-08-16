class Event < ApplicationRecord
  belongs_to :user, optional: true
  
  acts_as_taggable # Alias for acts_as_taggable_on :tags
end