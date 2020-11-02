class Drink < ApplicationRecord
  has_many :comments
  belongs_to :chain
  belongs_to :user
  attachment :image
end
