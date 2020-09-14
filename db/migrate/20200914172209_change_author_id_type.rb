class ChangeAuthorIdType < ActiveRecord::Migration[6.0]
  def change
    change_column :opinions, :authorid, 'numeric USING CAST(authorid AS numeric)'
  end
end
