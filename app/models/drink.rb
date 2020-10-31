class Drink < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :chains,dependent: :destroy
end
