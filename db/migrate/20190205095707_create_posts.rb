class CreatePosts < ActiveRecord::Migration[5.2]








  
  def change
    create_table :posts do |t|
      # タイトル
      t.string :name, :null => false
      # ジャンル
      t.string :kind
      # 開催日時（開始）
      t.datetime :startdate
      # 開催日時（終了）
      t.datetime :enddate
      # 開催エリア
      t.string :address
      # 参加人数
      t.integer :number
      # その他（詳細）
      t.text :description

      t.timestamps
    end
  end
end
