class CreatePromociones < ActiveRecord::Migration[6.1]
  def change
    create_table :promociones do |t|
      t.string :nombre
      t.float :descuento
      t.references :usuario, null: false, foreign_key: true
      t.references :restaurante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
