class Drink < ApplicationRecord
  has_many :comments
  has_many :favorites,dependent: :destroy
  belongs_to :chain
  belongs_to :user
  attachment :image
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
