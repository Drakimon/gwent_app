class DeckCard < ApplicationRecord
  belongs_to :deck
  belongs_to :card
  validates_presence_of :deck_id, :card_id
  validates_uniqueness_of :deck_id, :scope => :card_id
  
end
