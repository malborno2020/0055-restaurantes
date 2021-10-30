class Puntaje < ApplicationRecord

    before_validation   :convertir_a_minusculas
    after_validation    :convertir_a_minusculas

    after_save  :enviar_correo
    after_destroy   :mostrar_el_eliminado

    has_many :puntajes_platos
    has_many :puntajes_restaurantes

    validates   :tipo, presence:    true
    validates   :tipo, uniqueness:  true

    private
    def convertir_a_minusculas
        puts "ANTES DE LA VALIDACION"
        self.tipo.capitalize!
        self.tipo = self.tipo.downcase
        #@tipo.capitalize!
    end

    def enviar_correo
        puts "DESPUES DE GUARDAR".center(50, ".")
    end

    def mostrar_el_eliminado
        puts "#{self.tipo} ELIMINADO".center(50, "00000")
    end
    
end
