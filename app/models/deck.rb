class Deck < ApplicationRecord
  belongs_to :user
  has_many :deck_cards
  validates :deckName, length: { maximum: 15 }
end
