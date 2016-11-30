json.extract! deck, :id, :deckName, :faction, :user_id, :created_at, :updated_at
json.url deck_url(deck, format: :json)