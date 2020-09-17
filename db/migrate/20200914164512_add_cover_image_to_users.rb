class AddCoverImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :CoverImage, :string
  end
end
