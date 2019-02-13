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


<<<<<<< HEAD
class Post < ApplicationRecord
<<<<<<< HEAD
=======

class Post < ApplicationRecord
>>>>>>> eec479aa84a2b75654b6191f2dbac0d0c4ae77ec
  # Relationship: 投稿は一つのUserに関連する
  #use1対task多 
  belongs_to :user

<<<<<<< HEAD
  before_validation :set_nameless_name
    
  validates :name, presence: true
  validates :name, length: {maximum: 30 }
  
  private
  
  def set_nameless_name
      self.name ='名前無し' if name.blank?
  end
=======
=======
>>>>>>> eec479aa84a2b75654b6191f2dbac0d0c4ae77ec
    before_validation :set_nameless_name
    
    validates :name, presence: true
    validates :name, length: {maximum: 30 }
    
    private
    
    def set_nameless_name
        self.name ='名前無し' if name.blank?
    end
<<<<<<< HEAD
>>>>>>> 6e6d6f5d866bb2fc1424c3d0c45c0e79655e3d9e
=======

>>>>>>> eec479aa84a2b75654b6191f2dbac0d0c4ae77ec
end
