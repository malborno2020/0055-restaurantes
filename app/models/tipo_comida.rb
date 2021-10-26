class TipoComida < ApplicationRecord
    has_many :restaurantes

    validates   :tipo, presence:    true
    validates   :tipo, uniqueness:    true
    
end
