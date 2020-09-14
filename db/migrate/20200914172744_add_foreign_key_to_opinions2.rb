class AddForeignKeyToOpinions2 < ActiveRecord::Migration[6.0]
  def change
    change_column :opinions, :authorid, 'bigint USING CAST(authorid AS bigint)'
    add_foreign_key :opinions, :users, column: :authorid
  end
end
