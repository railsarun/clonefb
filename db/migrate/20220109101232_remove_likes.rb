class RemoveLikes < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :likes
  end
end
