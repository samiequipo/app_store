class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :description
      t.integer :existence
      t.decimal :price
      t.references :category, foreign_key: true
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
