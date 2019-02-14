class UserIdToPosts < ActiveRecord::Migration[5.2]
  # データベース上でUserとPostを紐付ける。 
    def change
      # add_reference :posts, :user, null: true, index: true
      add_column :posts, :user_id, :integer, null: false
      add_column :posts, :genre_id, :integer, null: false
      add_column :posts, :area_id, :integer, null: false
      add_index :posts, :genre_id
      add_index :posts, :area_id
      add_index :posts, :user_id
    end
end
