class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string   :deckName
      t.string   :faction
      t.string   :user_id

      t.timestamps
    end
  end
end
