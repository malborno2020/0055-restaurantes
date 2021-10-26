class PuntajeRestaurante < ApplicationRecord
  belongs_to :puntaje
  belongs_to :restaurante
  belongs_to :usuario
end
