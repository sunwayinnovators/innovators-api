class Document < ApplicationRecord
  mount_base64_uploader :document, DocumentUploader
  belongs_to :item
end
