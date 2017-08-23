class CreateStatusChangeResistances < ActiveRecord::Migration[5.1]
  def change
    create_table :status_change_resistances do |t|
      t.integer :stun
      t.integer :poison
      t.integer :silence
      t.integer :bleeding
      t.integer :sleep
      t.integer :stone_curse
      t.integer :freeze
      t.integer :curse
      t.integer :blind
      t.integer :confusion

      t.timestamps
    end
  end
end
