class CreatePuntajesPlatos < ActiveRecord::Migration[6.1]
  def change
    create_table :puntajes_platos do |t|
      t.references :plato, null: false, foreign_key: true
      t.references :puntaje, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
