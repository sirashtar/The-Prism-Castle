class AddCharacterToStats < ActiveRecord::Migration[5.1]
  def change
    add_reference :stats, :character, foreign_key: true
  end
end
