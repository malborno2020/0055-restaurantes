# class VotacionesController < ApplicationController

#     def restaurante
#         @restaurantes = Restaurante.includes(:puntajes)
#         @puntajes = Puntaje.all
#         if params[:buscar]
#             @restaurantes = @restaurantes.select do |r|
#                 r.nombre.downcase.include? params[:buscar].downcase
#             end
#         end
#     end

#     def votar
#         PuntajeRestaurante.create(usuario_id: 7, restaurante_id: params[:id_restaurante], puntaje_id: params[:id_puntaje])
#         puts "HAS VOTADO".center(50, "*")
#         redirect_to root_path
#     end
# end