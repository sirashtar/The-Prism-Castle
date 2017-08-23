class AddStatToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :stat, foreign_key: true
  end
end
