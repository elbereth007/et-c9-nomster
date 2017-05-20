# firehose track 3, lesson 5 - file created 19 may 17

class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
