class Post < ApplicationRecord
    before_validation :set_nameless_name
    
    validates :name, presence: true
    validates :name, length: {maximum: 30 }
    
    private
    
    def set_nameless_name
        self.name ='名前無し' if name.blank
    end
end
