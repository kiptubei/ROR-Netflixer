class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.string :authorid
      t.string :text

      t.timestamps
    end
    add_foreign_key :opinions, :users, column: :authorid
  end
end
