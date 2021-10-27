class UsuariosController < ApplicationController
   before_action    :buscar_usuario, only:  [:mostrar,:editar,:actualizar,:eliminar]
    #GET/usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    #GET/usuarios/:id
    def mostrar
        
    end

    #GET/usuarios/editar
    def editar
        
    end

    #POST/usuarios
    def guardar
        @usuario = Usuario.new(params_usuario)
        if @usuario.save
           redirect_to usuario_path(@usuario)
        else
            render  :crear
        end
    end

    #PATCH/usuarios/:id
    def actualizar
       
        if @usuario.update(params_usuario)
            redirect_to usuario_path(@usuario)
        else
            render  :editar
        end
    end

    #DELETE/usuarios/:id
    def eliminar

        if @usuario.destroy
            flash[:eliminar] = "Usuario #{@usuario.nombre_usuario} eliminado"
        else
            flash[:eliminar] = "No se pudo eliminar el usuario"
        end
        redirect_to nuevo_usuario_path
    end

    private
    def params_usuario
        return params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation) #devuelve las lista de datos del formulario en HASH. Puede ir con return al comienzo o no
    end

    def buscar_usuario
        @usuario = Usuario.find(params[:id])
    end

end