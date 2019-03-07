# frozen_string_literal: true

#都道府県のファイルを読み込む。
require 'csv'
# require 'zip'

# DLURL           = "http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"
# SAVEDIR         = "db/"
# CSVROW_AREANAME = 6

# savePath = ""

# # 住所CSVダウンロード、解答し保存
# open(URI.escape(DLURL)) do |file|
#   ::Zip::File.open_buffer(file.read) do |zf|
#     zf.each do |entry|
#       savePath = SAVEDIR + entry.name
#       zf.extract(entry, savePath) { true }
#     end
#   end
# end

# # 住所CSVを読み込みDBに保存
# CSV.foreach(savePath, encoding: "Shift_JIS:UTF-8") do |row|
#   areaName = row[CSVROW_AREANAME]
#   area = Area.find_or_create_by(:name => areaName)
# end

# File.unlink savePath

# 競技用
#csvファイルを扱うためのgemを読み込む

#foreachは、ファイル（genre.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される
CSV.foreach("db/genre.csv") do |row|
  Genre = Genre.create(
    id:   row['id'],
    name: row['name'],
  )
end


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
