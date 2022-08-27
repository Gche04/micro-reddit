class User < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :name, length: { minimum: 4, maximum: 12}

    has_many :posts
    has_many :comments
end
