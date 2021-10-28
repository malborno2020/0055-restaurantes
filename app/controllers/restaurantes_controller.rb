class RestaurantesController < ApplicationController

    # GET /restaurantes
    def listar
        @todos_los_tipos = Restaurante.all.order(id: :asc)
        @titulo_link = "Registrar nuevo restaurante"
    end

    #GET /restaurantes/nuevo
    def crear
        @restaurante    =  Restaurante.new
        @tipos_comidas  =  TipoComida.all
    end 

     # GET /restaurantes/:id
     def mostrar
        # vista para mostrar el detalle de un restaurante
        # por ejemplo, podríamos mostrar el tipos de comida que tiene
        @restaurante = Restaurante.find(params[:id])
    end

    # GET /restaurantes/:id/editar
    def editar
        # mostrar el formulario con los datos de un registro para cambiarlos
        @restaurante = Restaurante.find(params[:id])
    end

    # POST /restaurantes
    def guardar
        
        datos_restaurantes = params.require(:restaurante).permit(:nombre, :tipo_comida_id)
        @restaurante = Restaurante.new(datos_restaurantes)
        if @restaurante.save
           redirect_to restaurante_path(@restaurante)#TO DO
        else
            @tipos_comidas = TipoComida.all
            render  :crear
        end
    end

    def actualizar
        # encontrar el registro que quiero editar en la BD
        @restaurante = Restaurante.find(params[:id])
        datos_restaurante = params.require(:restaurante).permit(:nombre)
        # actualizar los campos necesarios
        @restaurante.nombre = datos_restaurante[:nombre]
        # guardar los cambios en la base de datos
        @restaurante.save
        # redireccionar a la lista de todos los tipos de comida
        redirect_to restaurantes_path
    end
end