class CreateInventaries < ActiveRecord::Migration[5.1]
  def change
    create_table :inventaries do |t|

      t.timestamps
    end
  end
end
