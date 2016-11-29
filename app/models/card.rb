class Card < ApplicationRecord
  validates_presence_of :name
  has_many :deck_cards
end
