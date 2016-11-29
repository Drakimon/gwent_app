json.extract! deck, :id, :deckId, :faction, :userId, :created_at, :updated_at
json.url deck_url(deck, format: :json)