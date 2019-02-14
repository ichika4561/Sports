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
  #Relationship: 投稿は一つのUserに関連する
  #use1対task多 
  belongs_to :user
  belongs_to :genre
  belongs_to :area
  before_validation :set_nameless_name
  validates :name, presence: true
  validates :started_at, presence: true

  private
  
  def set_nameless_name
      self.name ='名前無し' if name.blank?
  end
end
