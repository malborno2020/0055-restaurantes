class CreateRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.references :tipo_comida, null: false, foreign_key: true

      t.timestamps
    end
  end
end
