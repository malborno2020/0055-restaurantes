class UsuariosController < ApplicationController
    #GET/usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end
end