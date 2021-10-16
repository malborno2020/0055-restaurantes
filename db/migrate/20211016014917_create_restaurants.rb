class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :nombre
      t.string :string
      t.references :tipo_comida, null: false, foreign_key: true

      t.timestamps
    end
  end
end
