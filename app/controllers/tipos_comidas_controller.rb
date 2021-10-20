class TiposComidasController < ApplicationController

    # GET /tipos_comidas
    def listar
        @todos_los_tipos = TipoComida.all.order(id: :asc)
        @titulo_link = "Registrar nuevo tipo de comida"
    end

    # GET /tipos_comidas/nuevo
    def crear
        @tipo_comida = TipoComida.new
    end

    # GET /tipos_comidas/:id
    def mostrar
        # vista para mostrar el detalle de un tipo de comida
        # por ejemplo, podríamos mostrar todos los restaruantes adjuntos
        @tipo_comida = TipoComida.find(params[:id])
    end

    # GET /tipos_comidas/:id/editar
    def editar
        # mostrar el formulario con los datos de un registro para cambiarlos
        @tipo_comida = TipoComida.find(params[:id])
    end

    # POST /tipos_comidas
    def guardar
        # guardar lo que llegue del formulario en la base de datos
        datos_tipo_comida = params.require(:tipo_comida).permit(:tipo)
        nuevo_tipo = TipoComida.new(datos_tipo_comida)
        nuevo_tipo.save

        redirect_to tipos_comidas_path
    end

    def actualizar
        # encontrar el registro que quiero editar en la BD
        @tipo_comida = TipoComida.find(params[:id])
        datos_tipo_comida = params.require(:tipo_comida).permit(:tipo)
        # actualizar los campos necesarios
        @tipo_comida.tipo = datos_tipo_comida[:tipo]
        # guardar los cambios en la base de datos
        @tipo_comida.save
        # redireccionar a la lista de todos los tipos de comida
        redirect_to tipos_comidas_path
    end

    # DELETE /tipos_comidas/:id
    def eliminar
        # pasos para eliminar un registro
        # 1. buscar el registro por ID
        tipo = TipoComida.find(params[:id])
        # 2. Intentar eliminar el registro
        tipo.destroy
        redirect_to tipos_comidas_path
    end
end