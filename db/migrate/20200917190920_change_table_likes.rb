class ChangeTableLikes < ActiveRecord::Migration[5.2]
  def change
    drop_table :Likes, if_exists: true
  end
end
