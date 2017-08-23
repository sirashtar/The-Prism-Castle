class CreateQuasiStats < ActiveRecord::Migration[5.1]
  def change
    create_table :quasi_stats do |t|
      t.integer :atk_range
      t.integer :cast_time
      t.integer :weight_limit
      t.integer :energy

      t.timestamps
    end
  end
end
