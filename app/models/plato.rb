class Plato < ApplicationRecord
    belongs_to  :restaurante

    has_many    :puntajes_platos
    has_many    :puntajes, through: :puntajes_platos 

    validates(:nombre,presence: true) 
    #   validates(:precio,presence: true)
    validates(:descripcion, presence: true)

end
    