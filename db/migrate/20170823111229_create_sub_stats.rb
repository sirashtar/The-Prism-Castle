class CreateSubStats < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_stats do |t|
      t.integer :atk
      t.integer :matk
      t.integer :def
      t.integer :mdef
      t.integer :hit
      t.integer :crit
      t.integer :flee
      t.integer :aspd
      t.integer :hp
      t.integer :sp

      t.timestamps
    end
  end
end
