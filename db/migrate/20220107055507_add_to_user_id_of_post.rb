class AddToUserIdOfPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id,:integer
   # add_column :users, :password_digest, :string
  end
end
