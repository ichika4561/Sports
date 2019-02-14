class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    # ジャンルとエリアは別モデルで管理。
    create_table :posts do |t|
      t.string :name, null: false, comment:  "タイトル:空白無"
      t.datetime :started_at, null: false, comment:  "開催日時（開始）：空白無"
      t.datetime :ended_at, comment:  "開催日時（終了）"
      t.integer :number, comment:  "参加人数"
      t.text :description, comment:  "その他（詳細）"
      t.timestamps
    end
  end
end
