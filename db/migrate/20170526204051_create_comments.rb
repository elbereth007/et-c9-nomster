# firehose track 3, lesson 31 - file created 26 may 17

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
# next 4 lines added 26 may 17
      t.text :message
      t.string :rating
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end
# next 2 lines added 26 may 17
    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
    
  end
end
