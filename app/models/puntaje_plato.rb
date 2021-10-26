class PuntajePlato < ApplicationRecord
  
  belongs_to :plato
  belongs_to :puntaje
  belongs_to :usuario
end
