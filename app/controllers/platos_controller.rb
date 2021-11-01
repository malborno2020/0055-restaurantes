class PlatosController < ApplicationController


    before_action :asignar_plato, only: [:mostrar,:editar,:actualizar,:eliminar]
    before_action   :consultar_restaurantes, only:  [:crear,:editar]

    # GET /platos
    def listar
        @todos_los_tipos = Plato.all.order(id: :asc)
        @titulo_link = "Registrar nuevo plato"
    end

    #GET /platos/nuevo
    def crear
        @plato    =  Plato.new
    
    end 

     # GET /platos/:id
    def mostrar
        # vista para mostrar el detalle de un plato
        # por ejemplo, podríamos mostrar su descripcion
       
    end

    # GET /plato/:id/editar
    def editar
        # mostrar el formulario con los datos de un registro para cambiarlos
        
    end

    # POST /platos
    def guardar
        
        @plato = Plato.new(params_plato)
        if @plato.save
           redirect_to platos_path(@plato)
        else
            consultar_restaurantes
            render  :crear
        end
    end

    def actualizar
        # encontrar el registro que quiero editar en la BD
        if @plato.update(params_plato)
            redirect_to plato_path(@plato)
        else
            consultar_restaurantes
            render  :editar 
        end
    end



     # DELETE /platos/:id
     def eliminar
        # pasos para eliminar un registro
        # 1. buscar el registro por ID
        
        # 2. Intentar eliminar el registro
        @plato.destroy
        redirect_to platos_path
    end

    private

    def asignar_plato
        @plato = Plato.find(params[:id])
    end
        
    def params_plato
        params.require(:plato).permit(:nombre, :restaurante_id, :descripcion)
    end

    def consultar_restaurantes
        @restaurantes = Restaurante.all
    end

end