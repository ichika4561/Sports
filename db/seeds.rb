#都道府県のファイルを読み込む。
Area.create(id: 1, name: "北海道")
Area.create(id: 2, name: "青森県")
Area.create(id: 3, name: "岩手県")
Area.create(id: 4, name: "宮城県")
Area.create(id: 5, name: "秋田県")
Area.create(id: 6, name: "山形県")
Area.create(id: 7, name: "福島県")
Area.create(id: 8, name: "茨城県")
Area.create(id: 9, name: "栃木県")
Area.create(id: 10, name: "群馬県")
Area.create(id: 11, name: "埼玉県")
Area.create(id: 12, name: "千葉県")
Area.create(id: 13, name: "東京都")
Area.create(id: 14, name: "神奈川県")
Area.create(id: 15, name: "新潟県")
Area.create(id: 16, name: "富山県")
Area.create(id: 17, name: "石川県")
Area.create(id: 18, name: "福井県")
Area.create(id: 19, name: "山梨県")
Area.create(id: 20, name: "長野県")
Area.create(id: 21, name: "岐阜県")
Area.create(id: 22, name: "静岡県")
Area.create(id: 23, name: "愛知県")
Area.create(id: 24, name: "三重県")
Area.create(id: 25, name: "滋賀県")
Area.create(id: 26, name: "京都府")
Area.create(id: 27, name: "大阪府")
Area.create(id: 28, name: "兵庫県")
Area.create(id: 29, name: "奈良県")
Area.create(id: 30, name: "和歌山県")
Area.create(id: 31, name: "鳥取県")
Area.create(id: 32, name: "島根県")
Area.create(id: 33, name: "岡山県")
Area.create(id: 34, name: "広島県")
Area.create(id: 35, name: "山口県")
Area.create(id: 36, name: "徳島県")
Area.create(id: 37, name: "香川県")
Area.create(id: 38, name: "愛媛県")
Area.create(id: 39, name: "高知県")
Area.create(id: 40, name: "福岡県")
Area.create(id: 41, name: "佐賀県")
Area.create(id: 42, name: "長崎県")
Area.create(id: 43, name: "熊本県")
Area.create(id: 44, name: "大分県")
Area.create(id: 45, name: "宮崎県")
Area.create(id: 46, name: "鹿児島県")
Area.create(id: 47, name: "沖縄県")

# 競技用
Genre.create(id: 1, name: "バドミントン")
Genre.create(id: 2, name: "バスケ")
Genre.create(id: 3, name: "フィットネス_トレーニング")
Genre.create(id: 4, name: "テニス")
Genre.create(id: 5, name: "スキー")
Genre.create(id: 6, name: "登山")
Genre.create(id: 7, name: "ヨガ")
Genre.create(id: 8, name: "武道")
Genre.create(id: 9, name: "ランニング")
Genre.create(id: 10, name: "ゴルフ")
Genre.create(id: 11, name: "その他")




# 順番を指定して読み込みたいファイルを指定
seed_files = ["user.rb"]

# seedsフォルダを検索して実行するファイルを追加
Dir.glob(File.join(Rails.root, "db", "seeds", "*.rb")) do |file|
  basename = File.basename(file)
  next if seed_files.include?(basename)
  seed_files << basename
end

# SEEDを実行
seed_files.each do |basename|
  file = File.join(Rails.root, "db", "seeds", basename)
  # puts "#{basename} seed creating ..."
  print '.'
  begin
    load(file)
  rescue StandardError => e
    puts ''
    puts "#{basename} seed has error => #{e}"
  end
end

puts ''
