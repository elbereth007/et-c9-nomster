# firehose track 3, lesson 39 (challenge) - file created 2 jun 17

class AddPictureToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :picture, :string
  end
end
