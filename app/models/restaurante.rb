class Restaurante < ApplicationRecord
  belongs_to :tipo_comida
  has_many  :platos

  has_many  :invitaciones
  #has_many  :usuarios, through: :invitaciones

  has_many  :promociones
  #has_many  :usuarios, through: :promociones

  has_many  :puntajes_restaurantes
  has_many  :puntajes, through: :puntajes_restaurantes

  validates(:nombre, presence: true)
  validates(:nombre, uniqueness: true)

end
