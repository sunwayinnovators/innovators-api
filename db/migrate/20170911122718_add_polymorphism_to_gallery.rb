class AddPolymorphismToGallery < ActiveRecord::Migration[5.2]
  def change
    add_reference :galleries, :galleriable, polymorphic: true
    add_index :galleries, [:galleriable_id, :galleriable_type]
  end
end
