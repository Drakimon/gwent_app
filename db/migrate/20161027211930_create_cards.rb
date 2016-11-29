class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :cardId
      t.string :deck
      t.integer :strength
      t.string :combatType
      t.string :cardAbility
      t.string :description

      t.timestamps
    end
  end
end
