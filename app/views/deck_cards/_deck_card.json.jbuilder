json.extract! deck_card, :id, :deck_id, :card_id, :created_at, :updated_at
json.url deck_card_url(deck_card, format: :json)