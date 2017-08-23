class AddJobToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :job, foreign_key: true
  end
end
