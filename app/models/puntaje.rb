class Puntaje < ApplicationRecord

    has_many :puntajes_platos
    has_many :puntajes_restaurantes

    validates   :tipo, presence:    true
    validates   :tipo, uniqueness:  true
end
