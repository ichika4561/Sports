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
#

class Post < ApplicationRecord
    before_validation :set_nameless_name
    
    validates :name, presence: true
    validates :name, length: {maximum: 30 }
    
    private
    
    def set_nameless_name
        self.name ='名前無し' if name.blank?
    end
end
