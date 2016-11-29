class CreateDeckCards < ActiveRecord::Migration[5.0]
  def change
    create_table :deck_cards do |t|
      t.integer :deckCardId
      t.integer :deckId
      t.integer :cardId

      t.timestamps
    end
  end
end
