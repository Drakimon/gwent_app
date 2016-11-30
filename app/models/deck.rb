class Deck < ApplicationRecord
  belongs_to :user
  has_many :deck_cards
  validates :deckName, length: { maximum: 20 }, presence: true
end
