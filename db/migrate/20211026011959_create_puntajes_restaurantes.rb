class CreatePuntajesRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :puntajes_restaurantes do |t|
      t.references :puntaje, null: false, foreign_key: true
      t.references :restaurante, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
