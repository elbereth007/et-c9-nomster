# firehose track 3, lesson 39 (challenge) - file created 1 jun 17

class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      
      t.text :caption
      t.integer :place_id

      t.timestamps
    end
  end
end
