# == Schema Information
#
# Table name: posts
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  kind        :string           not null
#  startdate   :datetime         not null
#  enddate     :datetime
#  address     :string           not null
#  number      :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
class Post < ApplicationRecord
  paginates_per 10
  #Relationship: 投稿は一つのUserに関連する
  #use1対task多
  belongs_to :user
  belongs_to :genre
  belongs_to :area

  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy

  before_validation :set_nameless_name
  validates :name, presence: true
  validates :started_at, presence: true

  def liked_by(user)
    # user_idとpost_idが一致するlikeを検索する
    Like.find_by(user_id: user.id, post_id: id)
  end

  private

  def set_nameless_name
      self.name ='名前無し' if name.blank?
  end
end
