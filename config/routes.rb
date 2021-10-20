Rails.application.routes.draw do
  
  # Rutas Tipos Comidas
  get      'tipos_comidas',             to: 'tipos_comidas#listar',     as: 'tipos_comidas'     # listar 
  get      'tipos_comidas/nuevo',       to: 'tipos_comidas#crear',      as: 'nuevo_tipo_comida' # formulario de nuevo
  get        'tipos_comidas/:id',         to: 'tipos_comidas#mostrar',    as: 'tipo_comida'       # vista del detalle de un tipo de comida
  get      'tipos_comidas/:id/editar',  to: 'tipos_comidas#editar',     as: 'editar_tipo_comida'# formulario para editar el registro

  post     'tipos_comidas',             to: 'tipos_comidas#guardar'
  delete   'tipos_comidas/:id',         to: 'tipos_comidas#eliminar'

end