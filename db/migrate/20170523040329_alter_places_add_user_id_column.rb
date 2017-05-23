# firehose track 3, lesson 18 - file created 22 may 17

class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :user_id, :integer
    add_index :places, :user_id
  end
end
