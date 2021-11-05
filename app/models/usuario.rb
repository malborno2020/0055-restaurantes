class Usuario < ApplicationRecord
    before_validation   :convertir_a_mayusculas

    # after_save  :enviar_correo
    # after_destroy   :mostrar_el_eliminado

    has_secure_password

    has_many    :invitaciones
    # has_many :invitaciones_restaurantes, through: :invitaciones, source: :restaurante
    # has_many :camino1, through: :invitaciones, source: :restaurante

    has_many    :promociones
    # has_many :camino2, through: :promociones, source: :restaurante

    has_many :puntajes_platos
    has_many :puntajes_restaurantes

    validates   :nombre_usuario, presence:      true
    validates   :nombre_usuario, uniqueness:    true

    def convertir_a_mayusculas
        # puts "ANTES DE LA VALIDACION"
        self.nombre_usuario.capitalize!
        #@tipo.capitalize!
    end

    # def enviar_correo
    #     puts "DESPUES DE GUARDAR".center(50, ".")
    # end

    # def mostrar_el_eliminado
    #     puts "#{self.tipo} ELIMINADO".center(50, "00000")
    # end

end
