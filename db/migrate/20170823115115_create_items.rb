class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :subtype
      t.integer :weight
      t.boolean :buy_shop
      t.integer :required_level
      t.integer :buying_price
      t.integer :selling_price

      t.timestamps
    end
  end
end
