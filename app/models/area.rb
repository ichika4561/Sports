class Area < ApplicationRecord
    has_many :posts
    validates :area, presence: true
end
