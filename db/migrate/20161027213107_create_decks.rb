class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.integer :deckId
      t.string :faction
      t.string :userId

      t.timestamps
    end
  end
end
