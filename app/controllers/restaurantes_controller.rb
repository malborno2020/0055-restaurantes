class RestaurantesController < ApplicationController


    before_action :asignar_restaurante, only: [:mostrar,:editar,:actualizar,:eliminar]

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
        # por ejemplo, podríamos mostrar el tipo de comida que tiene
        
    end

    # GET /restaurantes/:id/editar
    def editar
        # mostrar el formulario con los datos de un registro para cambiarlos
        @tipos_comidas  =  TipoComida.all
    end

    # POST /restaurantes
    def guardar
        @restaurante = Restaurante.new(params_restaurante)
        if @restaurante.save
           redirect_to restaurantes_path
        else
            @tipos_comidas = TipoComida.all
            render  :crear
        end
    end

    # def actualizar
    #     # encontrar el registro que quiero editar en la BD
        
    #     datos_restaurante = params.require(:restaurante).permit(:nombre,:tipo_comida_id)
    #     # actualizar los campos necesarios
    #     @restaurante.nombre = datos_restaurante[:nombre]
    #     # guardar los cambios en la base de datos
    #     @restaurante.save
    #     # redireccionar a la lista de todos los tipos de comida
    #     redirect_to restaurantes_path
    # end

    def actualizar
        @restaurante.nombre = params_restaurante[:nombre]
        @restaurante.tipo_comida_id = params_restaurante[:tipo_comida_id]
        if @restaurante.save
            redirect_to restaurantes_path
        else
            @tipos_comidas = TipoComida.all
            render :editar
        end
    end



     # DELETE /restaurantes/:id
     def eliminar
        # pasos para eliminar un registro
        # 1. buscar el registro por ID
        
        # 2. Intentar eliminar el registro
        @restaurante.destroy
        redirect_to restaurantes_path
    end

    private

    def asignar_restaurante
        @restaurante = Restaurante.find(params[:id])
    end

    def params_restaurante
        datos_restaurantes = params.require(:restaurante).permit(:nombre, :tipo_comida_id)
    end
end