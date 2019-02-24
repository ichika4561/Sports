FactoryBot.define do
    factory :post do
        name {'テストを書く'}
        description { 'Rspec&Capybara&FacoryBotを準備する'}
        user
    end
end