class VotacionesController < ApplicationController

    def listar
        @restaurantes = Restaurante.all
        @lista_puntajes = Puntaje.all
    end

    # POST votaciones/:id_restaurante/puntaje/:id_puntaje
    def votar
        voto = PuntajeRestaurante.new
        voto.restaurante_id = params[:id_restaurante]
        voto.puntaje_id     = params[:id_puntaje]
        voto.usuario_id     = 10
        voto.save
        
        redirect_to root_path
    end
end