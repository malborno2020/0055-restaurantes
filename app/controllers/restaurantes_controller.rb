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
end