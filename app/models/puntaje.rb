class Puntaje < ApplicationRecord
    validates   :tipo, presence:    true
    validates   :tipo, uniqueness:  true
end
