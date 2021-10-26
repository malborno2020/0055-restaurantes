class CreatePlatos < ActiveRecord::Migration[6.1]
  def change
    create_table :platos do |t|
      t.string :nombre
      t.integer :precio
      t.string :descripcion
      t.references  :restaurante, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
