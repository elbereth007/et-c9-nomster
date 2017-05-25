# firehose track 3, lesson 29 - file created 24 may 17

class AlterPlacesAddLatAndLng < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :latitude, :float
    add_column :places, :longitude, :float
  end
end
