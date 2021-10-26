class CreateInvitaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :invitaciones do |t|
      t.string :mensaje
      t.date :fecha
      t.references  :usuario,     null:  false, foreign_key:  true
      t.references  :restaurante, null:  false, foreign_key:  true

      t.timestamps
    end
  end
end
