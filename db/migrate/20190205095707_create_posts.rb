class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name, null: false, comment:  "タイトル:空白無"
      t.string :kind, null: false, comment:  "ジャンル:空白無"     
      t.datetime :startdate, null: false, comment:  "開催日時（開始）：空白無"
      t.datetime :enddate, comment:  "開催日時（終了）"
      t.string :address, null: false, comment:  "開催エリア：空白無"
      t.integer :number, comment:  "参加人数"
      t.text :description, comment:  "その他（詳細）"

      t.timestamps
    end
  end
end
