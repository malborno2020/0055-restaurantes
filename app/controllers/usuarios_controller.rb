class UsuariosController < ApplicationController
    #GET/usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    #GET/usuarios/:id
    def mostrar
        @usuario = Usuario.find(params[:id])
    end

    #GET/usuarios/editar
    def editar
        @usuario = Usuario.find(params[:id])
    end

    #POST/usuarios
    def guardar
        #controlar que variables recibir
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        #cuidado de que esta variables quede igual que la de la vista
        @usuario = Usuario.new(datos_usuario)
        if @usuario.save
           redirect_to usuario_path(@usuario)
        else
            render  :crear
        end
    end

    #PATCH/usuarios/:id
    def actualizar
        @usuario = Usuario.find(params[:id])
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        if @usuario.update(datos_usuario)
            redirect_to usuario_path(@usuario)
        else
            render  :editar
        end
    end

    #DELETE/usuarios/:id
    def eliminar
        @usuario = Usuario.find(params[:id])
        if @usuario.destroy
            flash[:eliminar] = "Usuario #{@usuario.nombre_usuario} eliminado"
        else
            flash[:eliminar] = "No se pudo eliminar el usuario"
        end
        redirect_to nuevo_usuario_path
    end

end