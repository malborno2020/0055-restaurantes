class TiposComidasController <ApplicationController

    #GET /tipos comidas

    def listar
        @todos_los_tipos = TipoComida.all
    end
end