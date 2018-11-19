class Photo < ApplicationRecord
    belongs_to :user
    has_many :fans, :through => :likes, :source => :user
    has_many :comments
end
