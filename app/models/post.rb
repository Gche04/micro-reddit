class Post < ApplicationRecord
    validates :title, uniqueness: true
    validates :title, :body, :author_id, presence: true

    belongs_to :user
    has_many :comments
end
