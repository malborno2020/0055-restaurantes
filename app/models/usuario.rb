class Usuario < ApplicationRecord
    has_secure_password

    validates   :nombre_usuario, presence:      true
    validates   :nombre_usuario, uniqueness:    true

end
