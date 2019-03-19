FactoryBot.define do
  factory :user do
    name { 'テストユーザー' }
    email { 'test@example.comm' }
    password { 'password' }
  end
end