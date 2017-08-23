class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.integer :str
      t.integer :agi
      t.integer :vit
      t.integer :int
      t.integer :dex
      t.integer :luk

      t.timestamps
    end
  end
end
