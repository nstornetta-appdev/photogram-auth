class Comment < ApplicationRecord
    belongs_to :photo
    belongs_to :user
    validates :user_id, :photo_id, :body, presence: true
end
