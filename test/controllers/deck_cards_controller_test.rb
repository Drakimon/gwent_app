require 'test_helper'

class DeckCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deck_card = deck_cards(:one)
  end
end
