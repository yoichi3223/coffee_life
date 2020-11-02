class Drink < ApplicationRecord
  belongs_to :chain
  belongs_to :user
  attachment :image
end
