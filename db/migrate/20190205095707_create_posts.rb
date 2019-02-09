class CreatePosts < ActiveRecord::Migration[5.2]
# 投稿内容
# タイトル
# ジャンル
# 開催日時（開始）
# 開催日時（終了）
# 開催エリア
# 参加人数
# その他
  
  def change
    create_table :posts do |t|
      t.string :name
      t.string :string
      t.text :description

      t.timestamps
    end
  end
end
