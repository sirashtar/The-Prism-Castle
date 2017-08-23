class AddSubStatToStats < ActiveRecord::Migration[5.1]
  def change
    add_reference :stats, :sub_stat, foreign_key: true
  end
end
