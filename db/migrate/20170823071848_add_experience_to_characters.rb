class AddExperienceToCharacters < ActiveRecord::Migration[5.1]
  def change
  	add_column :characters, :experience, :integer
  end
end
