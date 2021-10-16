class TiposComidasController < ApplicationController

    # GET /tipos_comidas
    def listar
        @todos_los_tipos = TipoComida.all
        @titulo_link = "Mensaje desde el contralor"
    end

    # GET /nuevo_tipo_comida
    def nuevo
        @nuevo_tipo_comida = TipoComida.new
    end

    # POST /nuevo_tipo_comida
    def crear
        # guardar lo que llegue del formulario en la base de datos
        datos_tipo_comida = params.require(:tipo_comida).permit(:tipo)
        nuevo_tipo = TipoComida.new(datos_tipo_comida)
        nuevo_tipo.save
        redirect_to listar_tipos_comidas_path
    end

    # DELETE tipos_comidas/:id
    def eliminar
        # pasos para eliminar un registro
        # 1. buscar el registro por ID
        tipo = TipoComida.find(params[:id])
        # 2. Intentar eliminar el registro
        tipo.destroy
        redirect_to listar_tipos_comidas_path
    end
end