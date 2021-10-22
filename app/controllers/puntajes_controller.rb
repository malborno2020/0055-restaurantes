class PuntajesController < ApplicationController

    #GET/puntajes/listar
    def listar
        @todos_los_puntajes = Puntaje.all.order(id: :asc)
        @titulo_link = "Registrar un nuevo puntaje"
    end

    #GET/puntajes/nuevo
    def crear
        @puntaje = Puntaje.new
    end

    # GET /puntajes/:id
    def mostrar
        # vista para mostrar el detalle de un puntaje
        # por ejemplo, mostrar todos los restaurantes con ese puntaje
        @puntaje = Puntaje.find(params[:id])
    end

    # GET /puntajes/:id/editar
    def editar
        # mostrar el formulario con los datos de un registro para cambiarlos
        @puntaje = Puntaje.find(params[:id])
    end

    # POST /puntajes
    def guardar
        # guardar lo que llegue del formulario en la base de datos
        datos_puntaje = params.require(:puntaje).permit(:tipo)
        @puntaje = Puntaje.new(datos_puntaje)
        if @puntaje.save
            redirect_to puntajes_path
        else
            render  :crear
        end
    end

    def actualizar
        # encontrar el registro que quiero editar en la BD
        @puntaje = Puntaje.find(params[:id])
        datos_puntaje = params.require(:puntaje).permit(:tipo)
        # actualizar los campos necesarios
        @puntaje.tipo = datos_puntaje[:tipo]
        # guardar los cambios en la base de datos
        @puntaje.save
        # redireccionar a la lista de todos los tipos de comida
        redirect_to puntajes_path
    end

    # DELETE /puntajes/:id
    def eliminar
        # pasos para eliminar un registro
        # 1. buscar el registro por ID
        tipo = Puntaje.find(params[:id])
        # 2. Intentar eliminar el registro
        tipo.destroy
        redirect_to puntajes_path
    end
    
end
