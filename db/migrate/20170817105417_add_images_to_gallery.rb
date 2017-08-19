class AddImagesToGallery < ActiveRecord::Migration[5.2]
  def change
    add_column :galleries, :images, :string, array: true, default: [] # add images column as array
  end
end
