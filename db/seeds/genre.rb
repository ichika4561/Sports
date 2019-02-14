Genre.delete_all
5.times do |i|
  num = i + 1
  Genre.create!(
    name: "genre#{num}",
  )
end
