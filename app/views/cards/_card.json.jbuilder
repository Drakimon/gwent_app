json.extract! card, :id, :cardId, :deck, :strength, :combatType, :cardAbility, :description, :created_at, :updated_at
json.url card_url(card, format: :json)