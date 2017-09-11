class Club < ApplicationRecord
  has_one :gallery, as: :galleriable
  # validates_presence_of :name, :content
end
