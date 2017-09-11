class Gallery < ApplicationRecord
  mount_uploaders :images, ImageUploader # mount the uploaders
  belongs_to :galleriable, polymorphic: true
end
