class AddColumnsToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :start_at, :datetime
    add_column :events, :end_at, :datetime
    add_column :events, :latitude, :float 
    add_column :events, :longitude, :float
  end
end
