class Gallery < ApplicationRecord
  mount_uploaders :images, ImageUploader # mount the uploaders
end
