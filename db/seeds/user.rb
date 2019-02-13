User.delete_all
5.times do |i|
  num = i + 1
  User.create!(
    email: "sample#{num}@example.com",
    name: "sample#{num}",
    password: "passpass"
  )
end
