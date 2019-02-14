Area.delete_all
5.times do |i|
  num = i + 1
  Area.create!(
    name: "area#{num}",
    )
end
