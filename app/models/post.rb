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
  # Relationship: 投稿は一つのUserに関連する
    belongs_to :user

  #use1対task多 
  belongs_to :user
end
