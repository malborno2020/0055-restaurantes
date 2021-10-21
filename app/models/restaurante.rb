class Restaurante < ApplicationRecord
  belongs_to :tipo_comida

  validates :nombre, presence :true
  validates :nombre, uniqueness :true  
end
