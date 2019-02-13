class UserIdToPosts < ActiveRecord::Migration[5.2]
  # データベース上でUserとPostを紐付ける。 
    def up
      execute'DELETE FROM posts;'
      add_reference :posts, :user, null: false, index: true
    end

    def down
      remove_reference :posts, :user, index: true
    end

end
