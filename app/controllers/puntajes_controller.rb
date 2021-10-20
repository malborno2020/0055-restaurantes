class PuntajesController < ApplicationController

    #GET/puntajes/nuevo
def crear
    @puntaje = Puntaje.new
end

#GET/puntajes/listar
def listar
    @todos_los_puntajes = Puntajes.all.order(id: :asc)
    @titulo_link = "Registrar un nuevo puntaje"
end

# GET /puntajes/:id
def mostrar
    # vista para mostrar el detalle de un puntaje
    # por ejemplo, mostrar todos los restaurantes con ese puntaje
    @puntaje = Puntaje.find(params[:id])
end