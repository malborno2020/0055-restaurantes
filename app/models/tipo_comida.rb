class TipoComida < ApplicationRecord
    has_many :restaurantes

    validates   :tipo, presence:    true
end
