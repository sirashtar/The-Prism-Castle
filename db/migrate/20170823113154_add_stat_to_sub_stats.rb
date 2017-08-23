class AddStatToSubStats < ActiveRecord::Migration[5.1]
  def change
    add_reference :sub_stats, :stat, foreign_key: true
  end
end
