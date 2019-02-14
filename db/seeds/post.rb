Post.delete_all
20.times do |i|
  num = i + 1
  started_at_day = [*1..30].sample * [-1, 1].sample
  ended_at_day = started_at_day + 1
  Post.create!(
    user: User.random.first,
    genre: Genre.random.first,
    area: Area.random.first,
    name: "投稿#{num}",
    started_at: started_at_day.days.since,
    ended_at: ended_at_day.days.since,
    number: [*2..10].sample,
    description: "テキストテキストテキスト\n" * [*1..5].sample,

  )
end
