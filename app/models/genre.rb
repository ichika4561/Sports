class Genre < ApplicationRecord
    has_many :posts
    validates :genre, presence: true
end
