class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string   :name
      t.string   :deck
      t.string   :role
      t.integer  :strength
      t.string   :combatType
      t.string   :cardAbility
      t.string   :description

      t.timestamps
    end
  end
end
