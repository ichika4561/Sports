require 'rails_helper'

describe '投稿管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      FactoryBot.create(:post, genre_id: 12, area_id: 28, started_at: "2019-04-19 01:34:15", name: '最初のタスク', user: user_a)
    end
      context 'ユーザーAがログインしている時' do
        before do
          visit user_session_path
            fill_in'Eメール', with: 'a@example.com'
                      fill_in'パスワード', with: 'password'
              click_button 'Log in'
          visit posts_path
          end
        it 'ユーザーAが作成したタスクが表示される' do
          expect(page).to have_content '最初のタスク'
        end
      end
  end
end