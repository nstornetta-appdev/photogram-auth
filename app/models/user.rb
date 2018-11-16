class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true
  
  has_many :photos
  has_many :likes
  has_many :comments
  has_many :liked_photos, :through => :likes, :source => :photo
end
